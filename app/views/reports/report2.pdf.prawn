prawn_document do |pdf|
  pdf.text 'Projects with bids greater than X amount of dollars:'
  pdf.move_down 20
  pdf.table  @great_bids.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['project_type_description'], p['project_status_description']]}
end
