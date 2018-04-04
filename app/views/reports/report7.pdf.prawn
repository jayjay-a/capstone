prawn_document do |pdf|
  pdf.text 'Denied Bids:'
  pdf.move_down 10

 data = [['Project ID', 'Customer Name', 'Customer Branch', 'Project Type Description', 'Bid Submit Date']]
 data += @bid_denied.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'],
           p['project_type_description'], p['bid_submit_date']]}
 pdf.table(data, :header => true)


end
