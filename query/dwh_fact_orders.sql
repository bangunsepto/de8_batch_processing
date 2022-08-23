DROP TABLE IF EXISTS fact_orders;
CREATE TABLE fact_orders(
	order_date DATE NOT NULL,
	user_first_name VARCHAR(255) NOT NULL,
	order_id INT NOT NULL,
	order_item_id INT NOT NULL ,
	product_category_name VARCHAR(255) NOT NULL,
	product_name VARCHAR(255) NOT NULL,
	product_price INT NOT NULL,
	product_discount INT,
	order_item_quantity INT,
	product_subprice INT NOT NULL,
	order_price INT NOT NULL,
	product_subdiscount INT,
	order_discount INT,
	voucher_name VARCHAR(255),
	voucher_price VARCHAR(25),
	order_total INT NOT NULL
);