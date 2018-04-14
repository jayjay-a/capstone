prawn_document(:page_layout => :landscape)  do |pdf|
  pdf.text 'Compare Projects by Job Type and Bid Amount'
  pdf.move_down 10

  data = [['Project ID', 'Customer Name', 'Customer Branch', 'Job Type',
  'Project Start Date', 'Project End Date', 'Project Bid Amount']]

  data += @great_bids.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'],
     p['job_type_description'], p['project_start_date'], p['project_end_date'], p['bid_amount']]}

  pdf.table(data, :header => true) do
    row(0).font_style = :bold
  end

end