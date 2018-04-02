prawn_document do |pdf|
  pdf.text 'Show completed projects'
  pdf.move_down 20
  pdf.table  @complete_projects.collect{|p| [p['project_id'], p['customer_name'], p['project_status_description'], p['project_type_id'], p['bid_submit_date'], p['project_start_date'], p['project_end_date']]}
end
