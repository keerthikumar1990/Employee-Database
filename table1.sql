create table employee(empID number(5) not null primary key, firstname varchar2(20), lastname varchar2(20), compID number(5) not null unique, gender varchar2(20), rank number(20), title varchar2(20), streetname varchar2(20), Aptno number(20), zipcode number(20), supID number(20),graduationschool varchar2(50));

create table transactions(transID number(5) not null primary key,salary number(20),paydate date,empID number(5));

alter table transactions
add foreign key(empID)
references employee(empID)

create table phone(contactno number(10),empID number(5) not null)

alter table phone
add foreign key(empID)
references employee(empID)

create table manager(stockpercentage real,categories varchar2(20),empID number(5) not null);

alter table manager
add foreign key(empID)
references employee(empID)

create table financer(budgetary varchar2(50),financial_statement_analysis varchar2(50),financial_position_analysis varchar2(50),empID number(5) not null);

alter table financer
add foreign key(empID)
references employee(empID)

create table advertiser_market(sales_volume real,empID number(5) not null);

alter table advertiser_market
add foreign key(empID)
references employee(empID)

create table sites(sites_size number(20),sites_name varchar2(50) not null primary key,sites_location varchar2(50) not null unique,empID number(5) not null);

alter table sites
add foreign key(empID)
references employee(empID)

create table assign(sales_volume real,sites_size number(20),sites_name varchar2(50),sites_location varchar2(50), empID number(5) not null);

alter table assign
add foreign key(empID)
references employee(empID)

alter table assign
add foreign key(sites_name)
references sites(sites_name)

create table sales_market(sales_volume real,empID number(5) not null);

alter table sales_market
add foreign key(empID)
references employee(empID)

create table products(product_name varchar2(50),productID number(5) not null primary key,TRID number(5) not null unique);

create table transactionrecord(created_by varchar2(20),TR_date date,TRID number(5) not null primary key,empID number(5) not null);

alter table transactionrecord
add foreign key(empID)
references employee(empID)

create table sell(sales_volume real,product_name varchar2(50),productID number(5) not null primary key,TRID number(5) not null,empID number(5) not null);

alter table sell
add foreign key(empID)
references employee(empID)

alter table sell
add foreign key(TRID)
references products(TRID)

create table HR(certification varchar2(50),empID number(5) not null);

alter table HR
add foreign key(empID)
references employee(empID)

create table department(empID number(5) not null,deptID number(5) not null primary key,dept_name varchar2(20))

alter table department
add foreign key(empID)
references employee(empID)
