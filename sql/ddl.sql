-- CREATE DATABASE if not exists test 
--  DEFAULT CHARSET 'utf8';
use test;
create table if not exists test.t 
(
  id int not null
    primary key AUTO_INCREMENT,
  create_date      varchar(255) null,
  age int unsigned null,
  status           varchar(255) null,
  name varchar(255)
);

create index t_status 
  on t (status);

