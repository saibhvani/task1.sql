create table user.employee(
id int,
name varchar(45)not null,
email varchar(45)not null
);
alter table user.employee
add constraint pk_id primary key employee(id);

create  table user.designation(
id int primary key  auto_increment,
designation varchar(45)not null,
empid int 
);

alter table user.designation
drop foreign key fk_empid;

alter table user.employee
add column gender varchar(45)null;

select emp.name,  empd.designation  from  user.employee as emp
join user.designation as empd on  emp.id = empd.empid;

alter table user.designation
add constraint fk_empid  foreign key (empid) references user.employee(id);



 
