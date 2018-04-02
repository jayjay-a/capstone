prawn_document do |pdf|
  pdf.text 'Terminated Subcontractors are'
  pdf.move_down 20
  pdf.table  @term_subs.collect{|p| [p['subcontractor_name']]}
end
