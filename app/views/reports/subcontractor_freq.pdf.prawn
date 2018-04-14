prawn_document(:page_layout => :landscape) do |pdf|
  pdf.text 'Subcontractor Hiring Frequency'
  pdf.move_down 10

 data = [['Subcontractor Name', 'Job Type', 'Frequency', 'Phone', 'Email']]

 data += @sub_freq.collect{|p| [p['subcontractor_name'], p['job_type_description'],
 p['frequency'], p['subcontractor_phone'], p['subcontractor_email']]}

 pdf.table(data, :header => true) do
       row(0).font_style = :bold
     end


end
