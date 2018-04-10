prawn_document do |pdf|
  pdf.text 'Task Duration'
  pdf.move_down 10

   data = [['Project ID', 'Customer Name', 'Customer Branch', 'Job Type', 'Task Description',
   'Task Start Date', 'Task End Date', 'Days']]
   data += @duration_task.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['job_type_description'],
   p['task_description'], p['task_start_date'], p['task_end_date'], p['days']]}
   pdf.table(data, :header => true)

end