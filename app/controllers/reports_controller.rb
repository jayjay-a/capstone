class ReportsController < ApplicationController
  def index

  end


  #subcontractors by activity status
  def subcontractors_status
    @status_desc = nil
    @sub_status = nil
    @sub_status ||= params[:q]
    if @sub_status == nil
    sql = "SELECT sub.subcontractor_name, sub.company, sub.subcontractor_phone, sub.subcontractor_email, MAX(a.assignment_date) AS last_date
            FROM Subcontractors sub
            JOIN Subcontractor_statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
		        JOIN assignments a ON sub.subcontractor_id = a.subcontractor_id
            GROUP BY subcontractor_name, company, subcontractor_phone, subcontractor_email
		        ORDER BY subcontractor_name;"
    elsif @sub_status != nil
     sql =  "SELECT sub.subcontractor_name, sub.company, sub.subcontractor_phone, sub.subcontractor_email, MAX(a.assignment_date) AS last_date
            FROM Subcontractors sub
            JOIN Subcontractor_statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
		        JOIN assignments a ON sub.subcontractor_id = a.subcontractor_id
            WHERE subst.subcontractor_status_id = #{@sub_status}
            GROUP BY subcontractor_name, company, subcontractor_phone, subcontractor_email
		        ORDER BY last_date desc;"
    end
    @status_desc = SubcontractorStatus.where(subcontractor_status_id: @sub_status).pluck(:subcontractor_status_description).to_sentence
    @subcontractors = ActiveRecord::Base.connection.execute(sql)
    @filename = "#{@status_desc}Subcontractors.pdf"
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = "attachment; filename= \"#{@status_desc}Subcontractors.xlsx\""
      }
      format.pdf
    end
  end


  #compare projects by job type and bid amount
  def compare_projects
    @bid_amount_in = nil
    @job_type_in = nil
    @bid_amount_in ||= params[:q]
    @job_type_in ||= params[:t] #when text field is empty or wrong data type, need an error exception handling
      if @job_type_in == nil && @bid_amount_in == nil
          sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description,
                  p.bid_amount, p.project_start_date, p.project_end_date
	                FROM projects p
	                JOIN project_statuses pt ON p.project_status_id = pt.project_status_id
                	JOIN customers c ON p.customer_id = c.customer_id
	                FULL OUTER JOIN jobs j ON p.project_id = j.project_id
	                FULL OUTER JOIN job_types jt ON j.job_type_id = jt.job_type_id
                  WHERE pt.project_status_description = 'Project Completed'
	                ORDER BY p.project_end_date desc;"
        elsif @job_type_in != nil || @bid_amount_in != nil
          sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description,
                  p.bid_amount, p.project_start_date, p.project_end_date
	                FROM projects p
	                JOIN project_statuses pt ON p.project_status_id = pt.project_status_id
                	JOIN customers c ON p.customer_id = c.customer_id
	                FULL OUTER JOIN jobs j ON p.project_id = j.project_id
	                FULL OUTER JOIN job_types jt ON j.job_type_id = jt.job_type_id
	                WHERE jt.job_type_id = #{@job_type_in} AND p.bid_amount > #{@bid_amount_in}
                  AND pt.project_status_description = 'Project Completed'
	                ORDER BY p.project_end_date desc;"
end
    @great_bids = ActiveRecord::Base.connection.execute(sql)
    #@test_bids = Project.where("bid_amount > #{@bid_amount_in}")
    @filename = 'Compare_Projects.pdf'
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Compare_Projects.xlsx"'
      }
      format.pdf
    end
  end

  #show bid information from a project - kristina
  def bid_info
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description,
          p.bid_submit_date, p.bid_amount, ps.project_status_description
          FROM projects p
          JOIN jobs j ON p.project_id = j.project_id
          JOIN job_types jt ON j.job_type_id = jt.job_type_id
          JOIN customers c ON p.customer_id = c.customer_id
          JOIN project_statuses ps ON p.project_status_id = ps.project_status_id
          WHERE ps.project_status_description != 'Project Completed'
          AND ps.project_status_description != 'Project Active'
          ORDER BY ps.updated_at desc;"
    @bidinfo = ActiveRecord::Base.connection.execute(sql)
    @filename = "Bid Information"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Bid_Information.xlsx"'
      }
      format.pdf
    end
  end

  # show duration of project - kristina
  def project_duration
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, pt.project_type_description,
            p.project_start_date, p.project_end_date, p.project_end_date - p.project_start_date AS days
            FROM projects p
            JOIN project_types pt ON p.project_type_id = pt.project_type_id
            JOIN customers c ON p.customer_id = c.customer_id
			      JOIN project_statuses ps ON p.project_status_id = ps.project_status_id
			      WHERE project_status_description = 'Project Completed'
			      ORDER BY project_end_date desc, days desc;"

    @duration_proj = ActiveRecord::Base.connection.execute(sql)
    @filename = "Project_Duration.pdf"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Project_Duration.xlsx"'
      }
      format.pdf
    end
  end
 
  #show duration of job in project - kristina
  def job_duration
    sql = "SELECT p.project_id, customer_name, customer_branch, jt.job_type_description, job_start_date,
           job_end_date, job_end_date - job_start_date AS days
           FROM projects p
           JOIN customers c ON p.customer_id = c.customer_id
           JOIN jobs j ON p.project_id = j.project_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           JOIN job_statuses js ON j.job_status_id = js.job_status_id
           WHERE js.job_status_description = 'Completed'
           ORDER BY job_end_date desc, days desc;"

    @duration_job = ActiveRecord::Base.connection.execute(sql)
    @filename = "Job_Duration.pdf"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Job_Duration.xlsx"'
      }
      format.pdf
    end
  end
  
  # show duration of task in project
  def task_duration
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, job_type_description, task_description,
           task_start_date, task_end_date, task_end_date - task_start_date AS days, ts.task_status_description
           FROM projects p
           JOIN customers c ON p.customer_id = c.customer_id
           JOIN jobs j ON p.project_id = j.project_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           JOIN tasks t ON t.job_id = j.job_id
           JOIN task_statuses ts ON t.task_id = ts.task_status_id
           WHERE ts.task_status_description = 'Completed'
           ORDER BY task_end_date desc, days desc;"

    @duration_task = ActiveRecord::Base.connection.execute(sql)
    @filename = "Task_Duration.pdf"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Task_Duration.xlsx"'
      }
      format.pdf
    end
  end

  #show frequency of subcontractor being hired - kristina
  def subcontractor_freq
    sql = "SELECT s.SUBCONTRACTOR_NAME, jt.job_type_description, COUNT(a.SUBCONTRACTOR_ID) AS frequency,
           s.SUBCONTRACTOR_PHONE, s.SUBCONTRACTOR_EMAIL, MAX(a.assignment_date) AS last_date
           FROM ASSIGNMENTS a
           JOIN SUBCONTRACTORS s ON a.subcontractor_id = s.subcontractor_id
           JOIN subcontractor_statuses ss ON ss.subcontractor_status_id = s.subcontractor_status_id
           JOIN tasks t ON t.task_id = a.task_id
           JOIN jobs j ON t.job_id = j.job_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           WHERE ss.subcontractor_status_description = 'Inactive'
           GROUP BY subcontractor_name, job_type_description, subcontractor_phone, subcontractor_email, assignment_date
		       ORDER BY frequency desc, last_date;"
    @sub_freq = ActiveRecord::Base.connection.execute(sql)
    @filename = "Subcontractor_Hiring_Frequency.pdf"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Subcontractor_Frequency.xlsx"'
      }
      format.pdf
    end
  end

  #show tasks by activity status
  def tasks_status
    @status_desc = nil
    @task_status = nil
    @task_status ||= params[:q]
    if @task_status == nil
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description, t.task_description,
           ts.task_status_description, t.task_start_date, t.task_end_date
           FROM Tasks t
           JOIN task_statuses ts ON t.task_status_id = ts.task_status_id
			     JOIN jobs j ON t.job_id = j.job_id
			     JOIN job_types jt ON j.job_type_id = jt.job_type_id
			     JOIN projects p ON p.project_id = j.project_id
			     JOIN customers c ON c.customer_id = p.customer_id;"
    elsif @task_status != nil
      sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description, t.task_description,
           ts.task_status_description, t.task_start_date, t.task_end_date
           FROM Tasks t
           JOIN task_statuses ts ON t.task_status_id = ts.task_status_id
			     JOIN jobs j ON t.job_id = j.job_id
			     JOIN job_types jt ON j.job_type_id = jt.job_type_id
			     JOIN projects p ON p.project_id = j.project_id
			     JOIN customers c ON c.customer_id = p.customer_id
           WHERE ts.task_status_id = #{@task_status}
           ORDER BY ts.updated_at desc;"
    end
    @status_desc = TaskStatus.where(task_status_id: @task_status).pluck(:task_status_description).to_sentence
    @tasks = ActiveRecord::Base.connection.execute(sql)
    @filename = "#{@status_desc}Tasks.pdf"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = "attachment; filename= \"#{@status_desc}Tasks.xlsx\""
      }
      format.pdf
    end
  end

  #rental equip freq
  def rental_freq
    sql ="SELECT re.rental_description, jt.job_type_description, COUNT(rl.rental_equipment_id) AS frequency
          FROM rental_equipments re
          JOIN rental_lists rl ON re.rental_equipment_id = rl.rental_equipment_id
          JOIN projects p ON p.project_id = rl.project_id
          JOIN jobs j ON j.project_id = p.project_id
          JOIN job_types jt ON jt.job_type_id = j.job_type_id
          GROUP BY re.rental_description, jt.job_type_description, p.project_end_date
          ORDER BY frequency desc, p.project_end_date desc;"
    @rent_freq = ActiveRecord::Base.connection.execute(sql)
    @filename = "Rental_Frequency.pdf"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Rental_Frequency.xlsx"'
      }
      format.pdf
      #Anil's SQL Report
    end
  end

  #show project notes
  def project_notes
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, pt.project_type_description,
          ps.project_status_description, p.bid_submit_date, p.project_start_date, pn.project_notes
          FROM projects p
          JOIN customers c ON p.customer_id = c.customer_id
          JOIN project_types pt ON p.project_type_id = pt.project_type_id
          JOIN project_statuses ps ON p.project_status_id = ps.project_status_id
          JOIN project_notes pn ON p.project_id = pn.project_id
          WHERE project_status_description = 'Bid Accepted' OR project_status_description = 'Awaiting Bid Response'
          OR project_status_description = 'Project Active'
          ORDER BY pn.updated_at desc;"
    @proj_notes = ActiveRecord::Base.connection.execute(sql)
    @filename = "Project Notes"
    respond_to do |format|
      format.html
      format.xlsx{
        response.headers['Content-Disposition'] = 'attachment; filename= "Project_Notes.xlsx"'
      }
      format.pdf
      #?'s SQL Report
    end
  end

end
