SELECT        dbo.Sales_Order_Detail.order_number, dbo.Sales_Order_Detail.order_line_number, dbo.Sales_Order_Detail.mnemonic, dbo.sales_order_header.channel, 
                         dbo.sales_order_header.order_number AS Expr1, dbo.sales_order_header.total_order_value, dbo.sales_order_header.release_date, 
                         dbo.sales_order_header.entry_date
FROM            dbo.Sales_Order_Detail INNER JOIN
                         dbo.sales_order_header ON dbo.Sales_Order_Detail.order_number = dbo.sales_order_header.order_number
WHERE        (dbo.sales_order_header.entry_date > CONVERT(DATETIME, '2019-05-15 00:00:00', 102)) AND (dbo.sales_order_header.entry_date < CONVERT(DATETIME, 
                         '2019-05-18 00:00:00', 102)) AND (dbo.Sales_Order_Detail.mnemonic = 'PSF FUR 2')
     
   
   
  
    
   
