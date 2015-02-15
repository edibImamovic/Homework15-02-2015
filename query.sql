.header on
pragma foreign_keys = on;

/*Izlistati sve vozace zajedno za identifikacijskim brojem i tipom vozila koja su koristili*/

select drivers.name, drivers.last_name, vehicle.id, vehicle.vehicle_type
from drivers inner join vehicle on vehicle.id =drivers.id;

/*Izlistati sve tramvajske linije - polazna stanica i krajnja stanica*/

select vehicle.vehicle_type, vehicle_line.initial_station, vehicle_line.last_station
from vehicle inner join vehicle_line on vehicle.vehicle_type = "Tram";

/*Izlistati sve trolejbuske linije - polazna stanica i krajnja stanica*/

select vehicle.vehicle_type, vehicle_line.initial_station, vehicle_line.last_station
from vehicle inner join vehicle_line on vehicle.vehicle_type = "Trolleybus";

/*Izlistati sve autobuske linije - - polazna stanica i krajnja stanica*/

select vehicle.vehicle_type, vehicle_line.initial_station, vehicle_line.last_station
from vehicle inner join vehicle_line on vehicle.vehicle_type = "Bus";

/*Izlistati sve stanice sa kojih polaze autobusi i trolejbusi*/

select vehicle_line.initial_station, vehicle.vehicle_type
from vehicle_line inner join vehicle 
where vehicle.vehicle_type = "Bus" or vehicle.vehicle_type = "Trolleybus";

/*Izlistati sve stanice sa kojih polaze autobusi i tramvaji*/

select vehicle_line.initial_station, vehicle.vehicle_type
from vehicle_line inner join vehicle 
where vehicle.vehicle_type = "Bus" or vehicle.vehicle_type = "Tram";

/*Napisati query koji ce vratiti prosjek godina vozaca*/

select avg (drivers_age) from drivers;

/*Query koji ce ispisati prosjek godina rada u firmi za vozace*/

select avg(years_of_service) from drivers;

/*Napisati ime i prezime najstarijeg vozaca*/

select max(drivers_age), drivers.name, drivers.last_name from drivers;

/*Za odredenu liniju ispisati sve vozace koji rade na toj liniji*/

select vehicle_line.initial_station, vehicle_line.last_station, drivers.name, drivers.last_name
from vehicle_line inner join drivers
where vehicle_line.id = drivers.id;

/*Za odredeno vozilo ispisati sve vozace koji su ga koristili*/

select vehicle.id_number, vehicle.vehicle_type, drivers.name, drivers.last_name
from vehicle inner join drivers
where vehicle.id = drivers.id;

/*Izlistati vozace koji rade u prvoj smijeni*/

select drivers.name, drivers.last_name, schedule.driver_shift
from schedule inner join drivers
where drivers.id = schedule.id and schedule.id = 1;

/*Izlistati vozace koji rade u prvoj smjeni a voze autobuse.*/

select drivers.name, drivers.last_name, schedule.driver_shift, vehicle.vehicle_type
from schedule inner join drivers inner join vehicle
where drivers.id = schedule.id and schedule.id = 1 and 
vehicle.vehicle_type = "Bus";


