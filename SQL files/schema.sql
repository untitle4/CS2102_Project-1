create table Employees (
  eid char(20) primary key,
  name char(30),
  phone text,
  email text,
  join_date date,
  address text,
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
