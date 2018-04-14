prawn_document do |pdf|
  pdf.text 'Rental Equipment Frequency'
  pdf.move_down 10

 data = [['Rental Equipment', 'Job Type', 'Frequency']]

 data += @rent_freq.collect{|p| [p['rental_description'], p['job_type_description'], p['frequency']]}

 pdf.table(data, :header => true) do
        row(0).font_style = :bold
      end

end
