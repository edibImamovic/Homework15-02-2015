/* info for seed table*/
.header on
pragma foreign_keys = on;
/*input for Drivers*/
/* Name, lastname, age, years in service*/
insert into Drivers values (1,"Edib","Imamovic",30,6);
insert into Drivers values (2,"Jesenko","Gavric",27,3);
insert into Drivers values (3,"Necko","Hamzic",27,6);
insert into Drivers values (4,"Gordan","Sajevic",22,6);

/*input for Vehicle*/
/* Vehicle id, type of vehicle*/
insert into Vehicle values (1, 2336, "Tram");
insert into Vehicle values (2, 2445, "Trolleybus");
insert into Vehicle values (3, 2569, "Bus");
insert into Vehicle values (4, 2441, "Minibus");

/*input for Vehicle_Line*/
/* Initial station, last station, first morning line, interval of vehicles*/
insert into Vehicle_Line values (1, "Dom_Armije", "Podhrastovi", 8.15, 30);
insert into Vehicle_Line values (2, "Bascarsija", "Ilidza", 6.10, 15);
insert into Vehicle_Line values (3, "Stup", "Sokolje", 7, 45);
insert into Vehicle_Line values (4, "Trg_Austrije", "Dobrinja", 6.10, 15);

/*input for Schedule*/
/*There are 5 input fields and in this case ID is the first input, 
second input is number for driver shift,
third is for vehicle id , fourth is for drivers id ,
fifth is for vehicle id 
*/

insert into Schedule (id, driver_shift, vehicle_id, drivers_id, Vehicle_Line)
		values (1, 1, 3, 4, 4);

insert into Schedule (id, driver_shift, vehicle_id, drivers_id, Vehicle_Line)
		values (2, 2, 2, 3, 2);

insert into Schedule (id, driver_shift, vehicle_id, drivers_id, Vehicle_Line)
		values (3, 1, 4, 2, 1);

insert into Schedule (id, driver_shift, vehicle_id, drivers_id, Vehicle_Line)
		values (4, 1, 1, 1, 3);