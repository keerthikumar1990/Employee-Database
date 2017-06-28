insert into employee values(&empid,'&firstname','&lastname',&compid,'&gender',&rank,'&title','&streetname',&aptno,&zipcode,&supid,'&graduationschool');

insert into transactions values(&transid,&salary,to_date('dd-MMM-yyyy',&paydate),&empid)

insert into phone values(&contactno,&empid)

insert into manager values(&stockpercentage,'&categories',&empid)

insert into financer values('&budgetary','&financial_statement_analysis','&financial_position_analysis',&empid)

insert into advertiser_market values(&sales_volume,&empid)

insert into sites values(&sites_size,'&sites_name','&sites_location',&empid)

insert into assign values(&sales_volume,&sites_size,'&sites_name','&sites_location',&empid)

insert into sales_market values(&sales_volume,&empid)

insert into products values('&product_name',&productid,&trid)

insert into transactionrecord values('&created_by',&tr_date,&trid,&empid)

insert into sell values(&sales_volume,'&product_name',&productid,&trid,&empid)

insert into hr values('&certification',&empid)

insert into department values(&empid,&deptid,&dept_name)

