create table Courses (
  cid         char(20) primary key,
  title       text unique,
  description text,
  area        text
  duration    integer);

create table Offerings (
  fee               float，
  target_num        integer,
  launch_date       date,
  register_deadline timestamp,
  capacity          integer,
  start_date        date,
  end_date          date,
  status            text);
  
create table CoursePackages (
  pid         char(20) primary key,
  price       float,
  number      integer,
  name        text,
  start_date  date,
  end_date    date
  status      text);
  
create table Customers (
  cid         char(20) primary key,
  name        char(30),
  phone       text,
  email       text,
  home        text,
  card_info   ?);



create table Employees (
  eid         char(20) primary key,
  name        char(30),
  phone       text,
  email       text,
  home        text,
  join_date   date,
  depart_date date);

create table Part_time_Emp (
  eid char(20) primary key references Employees
      on delete cascade,
  hourly_rate numeric);

create table Full_time_Emp (
  eid char(20) primary key references Employees
      on delete cascade,
  monthly_salary numeric);

create table Instructors (
  eid char(20) primary key references Employees
      on delete cascade);

create table Part_time_instructors (
  eid char(20) primary key references Part_time_Emp
      references Instructors
      on delete cascade);

create table Full_time_instructors (
  eid char(20) primary key references Full_time_Emp
      references Instructors
      on delete cascade);

create table Administrators (
  eid char(20) primary key references Full_time_Emp
      on delete cascade);

create table Managers (
  eid char(20) primary key references Full_time_Emp
      on delete cascade);

create table Rooms (
  rid 			char(20) primary key,
  location		text,
  seating_capacity	integer);

create table Sessions (
  sid 		char(20),
  date 		text,
  start_time	text,
  end_time	text);
