prawn_document(:page_layout => :landscape) do |pdf|
  pdf.text 'Project Duration'
  pdf.move_down 10

   data = [['Project ID', 'Customer Name', 'Customer Branch', 'Project Type', 'Project Start Date', 'Project End Date', 'Days']]

   data += @duration_proj.collect{|p| [p['project_id'], p['customer_name'], p['customer_branch'], p['project_type_description'],
   p['project_start_date'], p['project_end_date'], p['days']]}

    pdf.table(data, :header => true) do
     row(0).font_style = :bold
    end

end


