prawn_document do |pdf|
  pdf.text 'Job Duration'
  pdf.move_down 10

   data = [['Project ID', 'Customer Name', 'Customer Branch', 'Job Type', 'Job Start Date', 'Job End Date', 'Days']]
   data += @duration_job.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['job_type_description'],
   p['job_start_date'], p['job_end_date'], p['days']]}
   pdf.table(data, :header => true)

end


