class ReportsController < ApplicationController
  def index

  end


  #subcontractors by activity status
  def report1
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


  #projects with bid greater than x dollars
  def report2
    @bid_amount_in = nil
    @job_type_in = nil
    @bid_amount_in ||= params[:q]
    @job_type_in ||= params[:t] #when text field is empty or wrong data type, need an error exception handling
      if @job_type_in == nil && @bid_amount_in == nil
          sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description,
                  pt.project_status_description, p.bid_amount
	                FROM projects p
	                JOIN project_statuses pt ON p.project_status_id = pt.project_status_id
                	JOIN customers c ON p.customer_id = c.customer_id
	                FULL OUTER JOIN jobs j ON p.project_id = j.project_id
	                FULL OUTER JOIN job_types jt ON j.job_type_id = jt.job_type_id
	                ORDER BY p.project_id, p.bid_amount desc"
        elsif @job_type_in != nil || @bid_amount_in != nil
          sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description,
                  pt.project_status_description, p.bid_amount
	                FROM projects p
	                JOIN project_statuses pt ON p.project_status_id = pt.project_status_id
                	JOIN customers c ON p.customer_id = c.customer_id
	                FULL OUTER JOIN jobs j ON p.project_id = j.project_id
	                FULL OUTER JOIN job_types jt ON j.job_type_id = jt.job_type_id
	                WHERE jt.job_type_id = #{@job_type_in} AND p.bid_amount > #{@bid_amount_in}
	                ORDER BY p.bid_amount desc;"
end
    @great_bids = ActiveRecord::Base.connection.execute(sql)
    #@test_bids = Project.where("bid_amount > #{@bid_amount_in}")
    @filename = 'compare_projects.xlsx'
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #completed projects
  def report3
    sql = "SELECT
           projects.project_id,
           customers.customer_name,
		       customers.customer_branch,
           project_types.project_type_description,
           projects.project_start_date,
           projects.project_end_date
           FROM projects
			     INNER JOIN project_statuses ON projects.project_status_id = project_statuses.project_status_id
           INNER JOIN Project_types ON Projects.project_type_id=Project_types.project_type_id
           INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
           WHERE project_statuses.project_status_description = 'Project Completed'
           ORDER BY project_end_date;"

    @complete_projects = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show active projects
  def report4
    sql = "SELECT
           projects.project_id,
           customers.customer_name,
		       customers.customer_branch,
           project_types.project_type_description,
           projects.project_start_date,
           projects.bid_submit_date
           FROM projects
			     INNER JOIN project_statuses ON projects.project_status_id = project_statuses.project_status_id
           INNER JOIN Project_types ON Projects.project_type_id=Project_types.project_type_id
           INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
           WHERE project_statuses.project_status_description = 'Project Active'
           ORDER BY project_start_date;"

    @active_projects = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #awaiting bid response -anil
  def report5
    sql = "SELECT
           projects.project_id,
           Customers.customer_name,
		       Customers.customer_branch,
           project_types.project_type_description,
           projects.bid_submit_Date
           From projects
		       INNER JOIN project_types ON projects.project_type_id = project_types.project_type_id
           INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
           INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
           Where project_statuses.project_status_description = 'Awaiting Bid Response'
		       ORDER BY bid_submit_date;"

    @waiting_bid = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #notes today -anil
  # def report6
  #   sql = "SELECT
  #          projects.project_id,
  #          Customers.customer_name,
  #          project_statuses.project_status_description,
  #          projects.bid_submit_date,
  #          projects.project_start_date,
  #          projects.project_end_date,
  #          project_notes.project_notes,
  #          project_notes.project_note_date
  #          From projects
  #          INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
  #          INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
  #          INNER JOIN Project_notes ON Project_notes.Project_id = Projects.Project_id
  #          Where project_notes.project_note_date = current_date::date;"
  #
  #   @notes_today = ActiveRecord::Base.connection.execute(sql)
  #   respond_to do |format|
  #     format.html
  #     format.xlsx
  #     format.pdf
  #   end
  # end

  #show denied bids - anil
  def report7
    sql = "SELECT
           projects.project_id,
           Customers.customer_name,
			     customers.customer_branch,
           project_types.project_type_description,
           projects.bid_submit_Date
           FROM projects
		       INNER JOIN project_types ON projects.project_type_id = project_types.project_type_id
           INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
           INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
           WHERE project_statuses.project_status_description = 'Bid Denied'
		       ORDER BY bid_submit_date;"

    @bid_denied = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show bids debued - anil
  def report8
    sql = "SELECT
           material_lists.project_id,
           customers.customer_name,
           customers.customer_branch,
           materials.material_description,
           material_lists.quantity
           FROM material_lists
           INNER JOIN materials on materials.material_id = material_lists.material_id
           INNER JOIN projects on projects.project_id = material_lists.project_id
           INNER JOIN customers on customers.customer_id = projects.customer_id
           WHERE project_statuses.project_status_description = 'Bid Denied';"

    @specific_matlist = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show certain customer 
  def report9
    sql = "SELECT c.customer_name, c.customer_branch, p.project_id, p.bid_amount
           FROM customers c
           JOIN projects p ON c.customer_id = p.customer_id
           WHERE c.customer_id = 1;"
    @specific_custproj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show all projects and all job types - kristina
  def report10
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description
           FROM projects p
		       JOIN customers c ON p.customer_id = c.customer_id
           JOIN jobs j ON p.project_id = j.project_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           ORDER BY project_start_date, job_start_date;"

    @specific_jobproj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show bid information from a project - kristina
  def report11
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, jt.job_type_description,
          p.bid_submit_date, p.bid_amount, ps.project_status_description
          FROM projects p
          JOIN jobs j ON p.project_id = j.project_id
          JOIN job_types jt ON j.job_type_id = jt.job_type_id
          JOIN customers c ON p.customer_id = c.customer_id
          JOIN project_statuses ps ON p.project_status_id = ps.project_status_id
          WHERE ps.project_status_description != 'Project Completed'
          AND ps.project_status_description != 'Project Active'
          ORDER BY bid_submit_date;"
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
  
  #show projects and their job types and their job tasks - kristina
  def report12
    sql = "SELECT p.project_id, jt.job_type_description, t.task_description
           FROM projects p
           JOIN jobs j ON p.project_id = j.project_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           JOIN tasks t ON j.job_id = t.job_id;"

    @alltask_job = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show all projects and their project type
  # def report13
  #   sql = "SELECT project_id, project_type_description
  #          FROM projects p
  #          JOIN project_types pt ON p.project_type_id = pt.project_type_id;"
  #
  #   @specific_projtype = ActiveRecord::Base.connection.execute(sql)
  #   respond_to do |format|
  #     format.html
  #     format.xlsx
  #     format.pdf
  #   end
  # end

  # show duration of project - kristina
  def report14
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, p.project_start_date, p.project_end_date, p.project_end_date - p.project_start_date AS days
            FROM projects p
            JOIN customers c ON p.customer_id = c.customer_id
			      JOIN project_statuses pt ON p.project_status_id = pt.project_status_id
			      WHERE project_status_description = 'Project Completed'
			      ORDER BY project_start_date, days desc;"

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
  def report15
    sql = "SELECT p.project_id, customer_name, customer_branch, jt.job_type_description, job_end_date - job_start_date AS days
           FROM projects p
           JOIN customers c ON p.customer_id = c.customer_id
           JOIN jobs j ON p.project_id = j.project_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id;"

    @duration_job = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  
  # show duration of task in project
  def report16
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, job_type_description, task_description, task_end_date - task_start_date AS days
           FROM projects p
           JOIN customers c ON p.customer_id = c.customer_id
           JOIN jobs j ON p.project_id = j.project_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           JOIN tasks t ON t.job_id = j.job_id;"

    @duration_task = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show frequency of subcontractor being hired - kristina
  def report17
    sql = "SELECT s.SUBCONTRACTOR_NAME, jt.job_type_description, COUNT(a.SUBCONTRACTOR_ID) AS frequency,
           s.SUBCONTRACTOR_PHONE, s.SUBCONTRACTOR_EMAIL
           FROM ASSIGNMENTS a
           JOIN SUBCONTRACTORS s ON a.subcontractor_id = s.subcontractor_id
           JOIN tasks t ON t.task_id = a.task_id
           JOIN jobs j ON t.job_id = j.job_id
           JOIN job_types jt ON j.job_type_id = jt.job_type_id
           GROUP BY subcontractor_name, job_type_description, subcontractor_phone, subcontractor_email
		       ORDER BY frequency desc, job_type_description;"
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
  
  #show completed projects - kunle
  # def report18
  #   sql = "SELECT projects.Project_Id, jobs.job_id, jobs.job_status_id,
  #          job_statuses.job_status_description
  #          FROM jobs
  #          INNER Join Projects on projects.project_id = jobs.project_id
  #          INNER Join Job_statuses on job_statuses.job_status_id = jobs.job_status_id
  #          WHERE job_statuses.job_status_description = 'Completed';"
  #
  #   @complete_jobs = ActiveRecord::Base.connection.execute(sql)
  #   respond_to do |format|
  #     format.html
  #     format.xlsx
  #     format.pdf
  #   end
  # end

  #show ongoing projects -kunle
  # def report19
  #   sql = "SELECT projects.Project_Id, jobs.job_id, jobs.job_status_id,
  #          job_statuses.job_status_description
  #          FROM jobs
  #          INNER Join Projects on projects.project_id = jobs.project_id
  #          INNER Join Job_statuses on job_statuses.job_status_id = jobs.job_status_id
  #          WHERE job_statuses.job_status_description = 'Ongoing';"
  #
  #   @ongoing_jobs = ActiveRecord::Base.connection.execute(sql)
  #   respond_to do |format|
  #     format.html
  #     format.xlsx
  #     format.pdf
  #   end
  # end

  #show rental list for this project -kunle
  def report20
    sql = "SELECT Projects.project_ID, Rental_Lists.rental_list_id,
           Rental_Lists.rental_price, Rental_Lists.cost_frequency,
           Rental_Equipments.rental_equipment_id, Rental_Equipments.rental_description
           FROM Rental_Lists
           INNER Join Projects on Projects.project_id = Rental_Lists.project_id
           INNER Join Rental_Equipments
           on Rental_Equipments.rental_equipment_id = Rental_Lists.rental_equipment_id
           WHERE projects.Project_id = 7;"

    @specific_rentlist = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show projects for this month-kunle
  def report21
    sql = "SELECT Project_id, customer_id, project_type_id, project_status_id, project_start_date, project_end_date, bid_submit_date, bid_amount
          FROM projects
          WHERE Project_start_date between current_date and current_date + 7;"

    @weekly_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kunle's SQL Report

  #show active tasks
  def report22
    sql = "SELECT task_id, job_id, task_status_id, task_start_date, task_end_date,
           Task_description
           FROM Tasks
           WHERE task_status_id = 1;"

    @active_tasks = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show completed tasks
  def report23
    sql = "SELECT task_id, job_id, task_status_id, task_start_date, task_end_date,
           Task_description
           FROM Tasks
           WHERE task_status_id = 2;"

    @complete_tasks = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show projects for this week
  def report24
    sql = "SELECT Project_id, customer_id, project_type_id, project_status_id, project_start_date, project_end_date, bid_submit_date, bid_amount
           FROM projects
           WHERE Project_start_date between current_date and current_date + 30;"

    @monthly_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show projects for this year
  def report25
    sql = "SELECT Project_id, customer_id, project_type_id, project_status_id, project_start_date, project_end_date, bid_submit_date, bid_amount
           FROM projects
           WHERE Project_start_date between current_date and current_date + 365;"

    @yearly_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  #show active subcontractors
  # def report26
  #   sql = "SELECT sub.subcontractor_name, sub.subcontractor_phone, sub.subcontractor_email, sub.company FROM Subcontractors sub
  #          JOIN Subcontractor_statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
  #          WHERE subst.subcontractor_status_description = 'Active';"
  #
  #   @active_subs = ActiveRecord::Base.connection.execute(sql)
  #   respond_to do |format|
  #     format.html
  #     format.xlsx
  #     format.pdf
  #   end
  # end

  #rental equip freq
  def report27
    sql ="SELECT re.rental_description, jt.job_type_description, COUNT(rl.rental_equipment_id) AS frequency
          FROM rental_equipments re
          JOIN rental_lists rl ON re.rental_equipment_id = rl.rental_equipment_id
          JOIN projects p ON p.project_id = rl.project_id
          JOIN jobs j ON j.project_id = p.project_id
          JOIN job_types jt ON jt.job_type_id = j.job_type_id
          GROUP BY re.rental_description, jt.job_type_description
          ORDER BY jt.job_type_description;"
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
  def report28
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, pt.project_type_description,
          ps.project_status_description, p.bid_submit_date, p.project_start_date, pn.project_notes
          FROM projects p
          JOIN customers c ON p.customer_id = c.customer_id
          JOIN project_types pt ON p.project_type_id = pt.project_type_id
          JOIN project_statuses ps ON p.project_status_id = ps.project_status_id
          JOIN project_notes pn ON p.project_id = pn.project_id
          WHERE project_status_description = 'Bid Accepted' OR project_status_description = 'Awaiting Bid Response'
          OR project_status_description = 'Project Active'
          ORDER BY bid_submit_date, project_start_date;"
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

  def report29
    sql = "SELECT Subcontractors.subcontractor_name, Tasks.task_description FROM Assignments
JOIN Subcontractors ON Assignments.subcontractor_id = Subcontractors.subcontractor_id
JOIN Tasks ON Assignments.task_id = Tasks.task_id
WHERE Subcontractors.subcontractor_name = 'Philmon Tanuri'; "

    @assi_task = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
      #Aaron's SQL Report
    end
  end

  #terminated subcontractors
#   def report30
#     sql = "SELECT sub.subcontractor_name, sub.company, sub.subcontractor_phone, sub.subcontractor_email FROM Subcontractors sub
# LEFT OUTER JOIN Assignments a ON sub.subcontractor_id = a.subcontractor_id
# JOIN Subcontractor_Statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
# WHERE a.subcontractor_id IS NULL AND subst.subcontractor_status_description != 'Terminated';"
#
#     @inact_subs = ActiveRecord::Base.connection.execute(sql)
#     respond_to do |format|
#       format.html
#       format.xlsx
#       format.pdf
#       #Aaron's SQL Report
#     end
#   end

end
