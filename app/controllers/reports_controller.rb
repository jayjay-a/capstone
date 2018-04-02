class ReportsController < ApplicationController
  def index

  end

  def report1
    sql = "SELECT sub.subcontractor_name FROM Subcontractors sub
           JOIN Subcontractor_statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
            WHERE subst.subcontractor_status_description = 'Terminated';"
    @term_subs = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report2
    sql = "SELECT proj.project_id, cust.customer_name, cust.customer_branch, projty.project_type_description, projstat.project_status_description
FROM Projects proj
JOIN Customers cust ON proj.customer_id = cust.customer_id
JOIN Project_types projty ON proj.project_type_id = projty.project_type_id
JOIN Project_statuses projstat on proj.project_status_id = projstat.project_status_id
WHERE proj.bid_amount > 100;"
    @great_bids = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report3
    sql = "Select
projects.project_id,
Customers.customer_name,
project_statuses.project_status_description,
projects.project_type_id,
projects.project_start_date,
projects.project_end_date,
projects.bid_submit_Date
From projects
INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
Where project_statuses.project_status_description = 'project completed';"
# Anil's SQL Report
    @complete_projects = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report4
    sql = "Select
projects.project_id,
Customers.customer_name,
project_statuses.project_status_description,
projects.project_type_id,
projects.project_start_date,
projects.project_end_date,
projects.bid_submit_Date
From projects
INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
Where project_statuses.project_status_description = 'project ongoing'
"
    # Anil's SQL Report
    @active_projects = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
    end
  def report5
    sql = "Select
projects.project_id,
Customers.customer_name,
project_statuses.project_status_description,
projects.project_type_id,
projects.project_start_date,
projects.project_end_date,
projects.bid_submit_Date
From projects
INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
Where project_statuses.project_status_description = 'Awaiting Bid Response';
"
    @waiting_bid = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
    #Anil's SQL Report
  end
  def report6
    sql= "Select
    projects.project_id,
        Customers.customer_name,
        project_statuses.project_status_description,
        projects.bid_submit_date,
        projects.project_start_date,
        projects.project_end_date,
        project_notes.project_notes,
        project_notes.project_note_date
    From projects
    INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
    INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
    INNER JOIN Project_notes ON Project_notes.Project_id = Projects.Project_id
    Where project_notes.project_note_date = current_date::date;"

    @notes_today = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
    #Anil's SQL Report
  end
  def report7
    sql = "Select
    projects.project_id,
        Customers.customer_name,
        project_statuses.project_status_description,
        projects.project_type_id,
        projects.project_start_date,
        projects.project_end_date,
        projects.bid_submit_Date
    From projects
    INNER JOIN Project_statuses ON Projects.project_status_id=Project_statuses.project_Status_id
    INNER JOIN Customers ON Customers.Customer_id = Projects.Customer_id
    Where project_statuses.project_status_description = 'bid denied';"


    @bid_denied = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
    #Anil's SQL Report
  end
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

    WHERE projects.project_id = 6;"

    @specific_matlist = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
    #Anil's SQL Report

  end
  def report9
    sql = "SELECT c.customer_name, c.customer_branch, p.project_id, p.bid_amount
FROM customers c
JOIN projects p ON c.customer_id = p.customer_id;
"
    @specific_custproj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kristina's SQL Report

  def report10
    sql = "SELECT p.project_id, jt.job_type_description
FROM projects p
JOIN jobs j ON p.project_id = j.project_id
JOIN job_types jt ON j.job_type_id = jt.job_type_id;"

    @specific_jobproj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kristina's SQL Report
  def report11
    sql = "SELECT PROJECT_ID, ps.PROJECT_STATUS_DESCRIPTION,
BID_SUBMIT_DATE, BID_AMOUNT, BID_MATERIAL_COST,
BID_COST_OF_LABOR, BID_COST_OF_PERMITS,
BID_EQUIPMENT_RENTAL, BID_FREIGHT
FROM PROJECTS p
JOIN PROJECT_STATUSES ps ON p.project_status_id = ps.project_status_id;"

    @bidinfo_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kristina's SQL Report
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
  #Kristina's SQL Report

  def report13
    sql = "SELECT project_id, project_type_description
FROM projects p
JOIN project_types pt ON p.project_type_id = pt.project_type_id;
"
    @specific_projtype = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report14
    sql = "SELECT p.project_id, customer_name, customer_branch, project_end_date - project_start_date AS days
FROM projects p
JOIN customers c ON p.customer_id = c.customer_id;
"
    @duration_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kristina's SQL Report

  def report15
    sql = "SELECT p.project_id, customer_name, customer_branch, jt.job_type_description, job_end_date - job_start_date AS days
FROM projects p
JOIN customers c ON p.customer_id = c.customer_id
JOIN jobs j ON p.project_id = j.project_id
JOIN job_types jt ON j.job_type_id = jt.job_type_id;
"
    @duration_job = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kristina's SQL Report

  def report16
    sql = "SELECT p.project_id, c.customer_name, c.customer_branch, job_type_description, task_description, task_end_date - task_start_date AS days
FROM projects p
JOIN customers c ON p.customer_id = c.customer_id
JOIN jobs j ON p.project_id = j.project_id
JOIN job_types jt ON j.job_type_id = jt.job_type_id
JOIN tasks t ON t.job_id = j.job_id;
"
    @duration_task = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report17
    sql = "SELECT s.SUBCONTRACTOR_NAME, jt.job_type_description, COUNT(a.SUBCONTRACTOR_ID) AS frequency
FROM ASSIGNMENTS a
JOIN SUBCONTRACTORS s ON a.subcontractor_id = s.subcontractor_id
JOIN tasks t ON t.task_id = a.task_id
JOIN jobs j ON t.job_id = j.job_id
JOIN job_types jt ON j.job_type_id = jt.job_type_id
GROUP BY subcontractor_name, job_type_description;
"
    @sub_freq = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kristina's SQL Report
  def report18
    sql= "Select projects.Project_Id, jobs.job_id, jobs.job_status_id,
job_statuses.job_status_description
FROM jobs
INNER Join Projects on projects.project_id = jobs.project_id
INNER Join Job_statuses on job_statuses.job_status_id = jobs.job_status_id
WHERE job_statuses.job_status_description = 'Completed';
"
    @complete_jobs = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kunle's SQL Report
  def report19
    sql= "Select projects.Project_Id, jobs.job_id, jobs.job_status_id,
job_statuses.job_status_description
FROM jobs
INNER Join Projects on projects.project_id = jobs.project_id
INNER Join Job_statuses on job_statuses.job_status_id = jobs.job_status_id
WHERE job_statuses.job_status_description = 'Ongoing'"

    @ongoing_jobs = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kunle's SQL Report
  def report20
    sql= "Select Projects.project_ID, Rental_Lists.rental_list_id,
Rental_Lists.rental_price, Rental_Lists.cost_frequency,
Rental_Equipments.rental_equipment_id, Rental_Equipments.rental_description
FROM Rental_Lists
INNER Join Projects on Projects.project_id = Rental_Lists.project_id
INNER Join Rental_Equipments
on Rental_Equipments.rental_equipment_id = Rental_Lists.rental_equipment_id
Where projects.Project_id = 7;
"
    @specific_rentlist = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kunle's SQL Report
  def report21
    sql= "Select Project_id, customer_id, project_type_id, project_status_id, project_start_date, project_end_date, bid_submit_date, bid_amount
From projects
Where Project_start_date between current_date and current_date + 7;
"
    @weekly_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end
  #Kunle's SQL Report

  def report22
    sql= "Select task_id, job_id, task_status_id, task_start_date, task_end_date,
Task_description
From Tasks
Where task_status_id = 1;
"
    @active_tasks = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report23
    sql = "Select task_id, job_id, task_status_id, task_start_date, task_end_date,
Task_description
From Tasks
Where task_status_id = 2;
"
    @complete_tasks = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report24
    sql = "Select Project_id, customer_id, project_type_id, project_status_id, project_start_date, project_end_date, bid_submit_date, bid_amount
From projects
Where Project_start_date between current_date and current_date + 30;"
    @monthly_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report25
    sql= "Select Project_id, customer_id, project_type_id, project_status_id, project_start_date, project_end_date, bid_submit_date, bid_amount
From projects
Where Project_start_date between current_date and current_date + 365;"
    @yearly_proj = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

  def report26
    sql = "SELECT sub.subcontractor_name FROM Subcontractors sub
           JOIN Subcontractor_statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
            WHERE subst.subcontractor_status_description = 'Active';"
    @active_subs = ActiveRecord::Base.connection.execute(sql)
    respond_to do |format|
      format.html
      format.xlsx
      format.pdf
    end
  end

end
