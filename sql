#1. Write a query to create a database named SQL basics.

create database sqlbasics;

#2. Write a query to select SQL basics

use sqlbasics;

/*3. Write a query to create a product table with the fields product code, product name, 
price, stock, and category, a customer table with the fields customer ID, customer 
name, customer location, and customer phone number, and a sales table with the 
fields date, order number, product code, product name, quantity, and price*/

create table product (pro_code varchar(40) not null,
 p_name varchar(40) not null,
 stock varchar(40) not null,
 price int not null,
 category varchar(40) not null,
primary key (pro_code));

create table customer (c_id varchar(40) not null,
 c_name varchar(40) not null,
 c_location varchar(40) not null,
 c_phoneno int not null,
 primary key(c_id));

create table sales (order_date date not null,
 order_no varchar(40) not null,
 c_id varchar(40) not null,
 c_name varchar(40) not null,
 p_code varchar(40) not null,
 p_name varchar(40) not null,
 quantity int not null,
 price int not null,
 primary key(order_date));
 
 # 4. Write a query to insert values into the customer, product, and sales tables
 
INSERT INTO product(pro_code,p_name,stock,price,category) 
VALUES ('01','Book','100','22','Books');

insert into customer(c_id,c_name,c_location,c_phoneno) 
value('1111','Rohan','Pune','987654321');

insert into sales(order_date,order_no,c_id,c_name,p_code,p_name,quantity,price)
values ('2022-06-16','fr10','4567','Das','03','Ball','10','40');

/*5.Write a query to add two new columns such as S_no and categories to the sales table.*/

alter table sales add (S_no int not null,categories varchar(40) not null);

# 6. Write a query to change the stock field type to varchar in the product table

alter table product modify stock varchar(50);

#7. Write a query to change the table name from customer to customer details

alter table customer rename to customerdetails;

#8. Write a query to drop the sl. no. and categories columns from the sales table

alter table sales drop column S_no;

alter table sales drop column categories;

#9. Write a query to display the details where the category is stationary from the product table

select order_date,order_no,c_id,quantity,price from sales;

#10.Write a query to display the details where the category is stationary from the product table

select*from product 
where category='Books';

#11.Write a query to display the unique category from the product table

select distinct(category) from product;

/*12.Write a query to display the details of the sales from the sales table where quantity 
is eqaual to 1 and the price is less than 40*/

select*from sales where quantity<=1 and price <40;

#13.Write a query to display every customer whose name ends with an ‘n’

select c_name from customerdetails where c_name LIKE '%n';

#14.Write a query to display the product details in descending order of price

select * from product order by price desc ;

/*15.Write a query to display the product code and category from categories 
that have two or more products*/

select p_code,category from product 
group by category 
having COUNT(category)>=2;

/*16.Write a query to combine the sales and product tables based on the order number 
and customer's name including duplicated rows*/

select order_no,c_name from sales s
left join product p on s.p_code = p.pro_code
union all
select order_no,c_name from sales s right join product p on
s.p_code = p.pro_code
