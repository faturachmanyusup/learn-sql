-- Buat database baru
create database nama_database;

-- Buat table baru
create table products (
	id bigserial primary key,
	name varchar(50) not null,
	created_at timestamp,
	updated_at timestamp
)

-- Menambahkan kolom pada table
alter table products 
add column price bigint default 0;


-- Menambahkan data pada table (insert)
insert into products (name, price)
values ('Ferari', 200000)


-- Ambil data semua data(select/read)
select
	*
from products;


-- Ambil data dengan filter (conditions) =, <, >, is not null
select 
	id,
	name,
	price
from products
where price > 10000
order by price
limit 3


-- Ubah data 
update products 
set price = 120000
where id = 4


-- Hapus data
delete from products 
where id = 5

/**
 * TUGAS
 * 
 * - Buat database dengan nama ecommerce
 * 
 *	 Didalam database ecommerce
 * - Buat table orders
 * - Buat table products
 * - Buat table customers
 * 
 *
**/