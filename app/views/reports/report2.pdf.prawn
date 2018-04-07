prawn_document do |pdf|
  pdf.text 'Compare Projects by Job Type and Bid Amount'
  pdf.move_down 10

  data = [['Project ID', 'Customer Name', 'Customer Branch', 'Job Type', 'Project Status', 'Bid Amount']]
     data += @great_bids.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'],
     p['job_type_description'], p['project_status_description'], p['bid_amount']]}
     pdf.table(data, :header => true)
end