class AaronReportsController < ApplicationController
  def report1
    sql = "SELECT sub.subcontractor_name FROM Subcontractors sub
           JOIN Subcontractor_statuses subst ON sub.subcontractor_status_id = subst.subcontractor_status_id
            WHERE subst.subcontractor_status_description = 'Terminated';"
    @term_subs = ActiveRecord::Base.connection.execute(sql)
  end

  def report2
    sql = "SELECT proj.project_id, cust.customer_name, cust.customer_branch, projty.project_type_description, projstat.project_status_description
FROM Projects proj
JOIN Customers cust ON proj.customer_id = cust.customer_id
JOIN Project_types projty ON proj.project_type_id = projty.project_type_id
JOIN Project_statuses projstat on proj.project_status_id = projstat.project_status_id
WHERE proj.bid_amount > 100;"
    @great_bids = ActiveRecord::Base.connection.execute(sql)
  end

  def report3
  end
end
