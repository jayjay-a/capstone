prawn_document do |pdf|
  pdf.text 'Bid Information'
  pdf.move_down 10

 data = [['Project ID', 'Customer Name', 'Customer_Branch', 'Job Type', 'Bid Submit Date', 'Bid Amount', 'Project_Status']]
 data += @bidinfo.collect{|p| [p['project_id'], p['customer_name'],
 p['customer_branch'], p['job_type_description'], p['bid_submit_date'], p['bid_amount'], p['project_status_description']]}
 pdf.table(data, :header => true)


end

