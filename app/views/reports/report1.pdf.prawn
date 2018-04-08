prawn_document do |pdf|
  pdf.text "#{@status_desc} Subcontractors"
  pdf.move_down 10


   data = [['Subcontractor Name', 'Company', 'Phone', 'Email', 'Last Assignment Date']]
   data += @subcontractors.collect{|p| [p['subcontractor_name'], p['company'], p['subcontractor_phone'],
    p['subcontractor_email'], p['last_date']]}
   pdf.table(data, :header => true)

end
