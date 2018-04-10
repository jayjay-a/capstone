prawn_document do |pdf|
  pdf.text "#{@status_desc} Tasks"
  pdf.move_down 10


   data = [['Project ID', 'Customer Name', 'Customer Branch', 'Job Type', 'Task', 'Task Status', 'Task Start Date', 'Task End Date']]
   data += @tasks.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'],
    p['job_type_description'], p['task_description'], p['task_status_description'], p['task_start_date'], p['task_end_date']]}
   pdf.table(data, :header => true)

end


