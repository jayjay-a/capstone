prawn_document do |pdf|
  pdf.text 'Show duration of Projects:'
  pdf.move_down 20
  pdf.table  @duration_proj.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['days']]}
end
