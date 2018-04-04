prawn_document do |pdf|
  pdf.text 'Completed Projects'
  pdf.move_down 10

  data = [['Project ID', 'Customer Name', 'Customer Branch', 'Project Type Description', 'Project Start Date', 'Project End Date']]
  data += @complete_projects.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'],
            p['project_type_description'], p['project_start_date'], p['project_end_date']]}
  pdf.table(data, :header => true)

 end
