CREATE DATABASE ecommercelaravel;

CREATE TABLE customer
(cus_id INT PRIMARY KEY,
cus_name VARCHAR(30),
cus_address VARCHAR(30),
cus_email VARCHAR(30),
cus_phone BIGINT(30) UNIQUE);
SELECT * FROM customer;

CREATE TABLE category
(cat_id INT PRIMARY KEY,
cat_name VARCHAR(30),
cus_id INT,
FOREIGN KEY (cus_id) REFERENCES customer(cus_id));

SELECT * FROM category;

CREATE TABLE product
( pro_id INT PRIMARY KEY,
  pro_name VARCHAR(30),
  pro_price VARCHAR(30),
  pro_des VARCHAR(50),
  cat_id INT,
  FOREIGN KEY (cat_id) REFERENCES category(cat_id)
);
SELECT * FROM product;

CREATE TABLE cart
(
 cart_id INT PRIMARY KEY,
 cart_qty VARCHAR(30),
 pro_id INT,
 cus_id INT,
 FOREIGN KEY (pro_id) REFERENCES product(pro_id),
 FOREIGN KEY (cus_id) REFERENCES customer(cus_id)
 );
 
 CREATE TABLE orders
 ( orde_id INT PRIMARY KEY,
   orde_date DATE,
   cus_id INT,
   FOREIGN KEY (cus_id) REFERENCES customer(cus_id),
   cat_id INT,
   FOREIGN KEY (cat_id) REFERENCES category(cat_id)
 );

CREATE TABLE payment
( 
 pay_id INT PRIMARY KEY,
 pay_option VARCHAR(30),
   cus_id INT,
   FOREIGN KEY (cus_id) REFERENCES customer(cus_id),
   orde_id INT,
      FOREIGN KEY (orde_id) REFERENCES orders(orde_id)
);