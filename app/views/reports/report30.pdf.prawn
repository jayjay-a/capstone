prawn_document do |pdf|
  pdf.text 'Inactive Subcontractors:'
  pdf.move_down 10


   data = [['Subcontractor Name', 'Company', 'Phone', 'Email']]
   data += @inact_subs.collect{|p| [p['subcontractor_name'],  p['company'], p['subcontractor_phone'], p['subcontractor_email']]}
   pdf.table(data, :header => true)

end
