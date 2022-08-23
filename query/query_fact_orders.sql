
select  a.order_date, d.user_first_name, a.order_id,z.order_item_id, pc.product_category_name, 
b.product_name, b.product_price, b.product_discount,
z.order_item_quantity, z.product_subprice, a.order_price,z.product_subdiscount, a.order_discount,h.voucher_name, h.voucher_price, a.order_total 
from tb_order_items z
left join tb_orders a on z.order_id = a.order_id
left join tb_products b on z.product_id = b.product_id
left join tb_payments e on a.payment_id = e.payment_id
left join tb_shippers f on a.shipper_id = f.shipper_id
left join tb_ratings g on a.rating_id = g.rating_id
left join tb_vouchers h on a.voucher_id = h.voucher_id
left join tb_users d on a.user_id= d.user_id
left join tb_product_category pc on  b.product_category_id = pc.product_category_id 