use ap;

/* Create a table to record delivery routes */
CREATE TABLE route (
    route_id integer not null auto_increment primary key,
    route_name varchar(40),
    stops SET("St. John's", 'Whitbourne', 'Avondale', 'Brigus', 'Bay Roberts',
              'Harbour Grace', 'Carbonear', 'Come by Chance', 'Clarenville', 'Bay Verte',
			  'Fogo', 'Twillingate', "Morton's Harbour"));

/* Add some records to that table */
insert into route (route_name, stops) values
    ('direct', ("St. John's,Clarenville")),
    ('TCH', ("St. John's,Whitbourne,Come by Chance,Clarenville")),
    ('CBN', ("St. John's,Bay Roberts,Harbour Grace,Carbonear")),
    ('Stix', ("St. John's,Clarenville,Fogo")),
    ('Jig', ("Fogo,Twillingate,Morton's Harbour"));

/* find the routes that contain Clarenville */
select * from route where stops like "%Clarenville%";
select * from route where FIND_IN_SET('Clarenville', stops)>0;

/* Create an airports route */
insert into route (route_name, stops) values ('airports', ("St. John's"));

select * from route where route_name = 'airports';

/* OK, but there should be more stops than just St. John's. Let's add Gander, Dearlake, and Stephenville. */

/* But wait! Those are not in our table's valid set. Let's first add some more towns to that set.
   We must list all the ones we had before and then add the new ones. */
alter table route modify stops set (
    "St. John's", 'Whitbourne', 'Avondale', 'Brigus', 'Bay Roberts',
    'Harbour Grace', 'Carbonear', 'Come by Chance', 'Clarenville', 'Bay Verte',
    'Fogo', 'Twillingate', "Morton's Harbour", "Gander", "Dearlake", "Cornerbrook",
    "Stephenville", "Port aux Basque");

/* Now we can update the airports route (Note spaces are not permitted before or after the name but
   are fine within the name) */
update route set stops = CONCAT(stops, ",Gander,Dearlake,Stephenville") where route_name = 'airports';

select * from route;