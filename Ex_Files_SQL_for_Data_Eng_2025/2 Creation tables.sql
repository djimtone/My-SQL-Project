create table categories(
category_id serial primary key,
name varchar(100)
);

create table Products (
product_id serial primary key,
name varchar(100),
price decimal(10,2),
description varchar(255),
tags varchar(255),
category_id int,
Foreign key (category_id) references categories(category_id),
supplier varchar(100)
);

create table Customer (
customer_id serial primary key,
customer_name varchar(100) not null,
email varchar(100) not null,
phone_number varchar(20),
address varchar(255),
city varchar(255)
);

create table Orders (
order_id serial primary key,
customer_id int,
product_id int,
total_quantity int,
total_amount decimal(10,2),
order_rating decimal(3,1),
length decimal(5,2),
width decimal(5,2),
order_timestamp timestamp,
delivery_timestamp timestamp,
	Foreign key (customer_id) references Customer(customer_id),
	Foreign key (product_id) references Products(product_id)
);

insert into Categories(name) values ('Electronics'), ('Clothing'), ('Home and Kitchen'),

insert into Products (name, price, description, tags, category_id, supplier)
values
	('Laptop', Null, 'High performance laptop for professionals', 'electronics, portable, techs', 1, 'SupplierA'),
	('Headphones', 129.99, 'Over-ear wireless headphones', 'electronics, audio, accessories', 1, 'SupplierB'),
	('Backpack', 49.99, 'Stylish and durable backpack for every day use', 'fashion, accessories, travel', 2, 'NULL'),
	('Coffee Maker', Null, 'Automatic drip coffee maker with programmable timer', 'home, kitchen, appliances', 3, 'NULL'),
	('Fitness Tracker', 79.99, 'water-resistant fitness tracker with heart rate monitor', 'electronics, fitness, wearables', 1, 'NULL');


insert into Customer (customer_name, email, phone_number, address, city) values
	('Alice Johnson', 'alice@example.com', '123-122-878', '123 Main st', 'cityville'),
	('Bob Smith', 'bob@example.com', '986-4973-454', '456 oak ave', 'Townsville'),
	('Djimtone Moimadnan', 'djim@gmail.com', '46538632', 'Rue 30 abena', 'London'),
	('Allahta M', 'allah@example.com', '5638-3826-34', '34 Los angeles', 'Los Angeles'),
	('Eva black', 'eva@example.com', '85764-840-583', '65 Ave djim', 'NYC'),
	('Madjiadoum M', 'madja@example.com', '111-222-364', '123 Elm st', 'Gotham city');

insert into Orders(customer_id, product_id, total_quantity, total_amount, order_rating, length, width, order_timestamp, delivery_timestamp)
values
	(1, 1, 5, 120.50, 4.5, 2.3, 1.8, '2023-01-15 10:30:00', '2023-01-16 15:45:00'),
	(2, 2, 3, 75.25, 3.8, 1.5, 1.2, '2023-02-03 14:20:00', '2023-02-05 11:10:00'),
	(3, 3, 7, 210.75, 4.2, 2.8, 2.0, '2023-03-12 08:45:00', '2023-03-14 09:30:00'),
	(1, 4, 2, 50.00, 4.8, 1.8, 1.5, '2023-04-05 12:15:00', '2023-04-07 18:20:00');


select * from categories
select * from Customer
select * from Products
select * from Orders














