/*this is table for vehicle*/

create table if not exists Vehicle(
id integer primary key autoincrement,
id_number integer,
vehicle_type varchar(22)
);

/*this is table for drivers*/

create table if not exists Drivers(
id integer primary key autoincrement,
name varchar (22),
last_name varchar(22),
drivers_age int,
years_of_service int
);

/*this is table for line*/

create table if not exists Vehicle_Line(
id integer primary key autoincrement,
initial_station varchar(40),
last_station varchar (30),
first_morning_line integer,
line_interval integer
);

/*this is table for line*/

create table if not exists Schedule (
id integer primary key autoincrement,
driver_shift integer,
vehicle_id integer,
drivers_id integer,
vehicle_line integer

);