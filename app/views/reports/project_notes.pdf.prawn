prawn_document(:page_layout => :landscape) do |pdf|
  pdf.text 'Project Notes'
  pdf.move_down 10

 data = [['Project ID', 'Customer Name', 'Customer Branch', 'Project Type', 'Project Status', 'Bid Submit Date',
 'Project Start Date', 'Project Notes', 'Project Note Date']]

 data += @proj_notes.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['project_type_description'],
 p['project_status_description'], p['bid_submit_date'], p['project_start_date'], p['project_notes'], p['project_note_date']]}


  pdf.table(data, :header => true, :column_widths => [50, 80, 70, 75, 65, 70, 70, 200, 70 ]) do
    row(0).font_style = :bold
end

end
