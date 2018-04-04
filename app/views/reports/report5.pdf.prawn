prawn_document do |pdf|
  pdf.text 'Bids waiting for a response:'
  pdf.move_down 10

 data = [['Project ID', 'Customer Name', 'Customer Branch', 'Project Type Description', 'Bid Submit Date']]
 data += @waiting_bid.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'],
           p['project_type_description'], p['bid_submit_date']]}
 pdf.table(data, :header => true)


end
