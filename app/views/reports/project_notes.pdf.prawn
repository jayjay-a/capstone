prawn_document do |pdf|
  pdf.text 'Project Notes'
  pdf.move_down 10

 data = [['Project ID', 'Customer Name', 'Customer Branch', 'Project Type', 'Project Status', 'Bid Submit Date',
 'Project Start Date', 'Project Notes']]
 data += @proj_notes.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['project_type_description'],
 p['project_status_description'], p['bid_submit_date'], p['project_start_date'], p['project_notes']]}
 pdf.table(data, :header => true)

end
