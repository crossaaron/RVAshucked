-- Oyster varieties seed data
INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Lynnhaven', 7, "36.844874, -76.010577", "Salty oyster with sweetness and a smooth finish" );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Ruby Salts', 3, "37.268084, -76.018187", "Salty and creamy with mellow sweetness with a quick finish" );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Morattico', 5, "37.793092,-76.6465835", "sweet, buttery, clean mineral finish" );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Seaside Salts', 1, "37.476646, -75.9343137", "Initial bold saltiness mellowing into a taste of sweet butter/cream at the finish." );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Tangiers', 8, "37.824287, -75.994226", "Traditional Virginia Bay Oyster flavor with a balance of salt and sweet, and a savory butter/cream finish." );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('McKinney’s Island', 4, "37.712045, -75.749574", "Sweetwater oyster with a light cream taste." );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Rochambeu', 5, "37.236944, -76.513118", "Lightly salty with easily distinguished cream or butter and a pleasant slight minerality." );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Rappahannock River', 1, "37.587920, -76.473964", "Initial bold saltiness mellowing into a taste of sweet butter/cream at the finish." );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ('Olde Salts', 3, "37.933692, -75.378519", "Salty and creamy with mellow sweetness with a quick finish.
" );

INSERT INTO oysters (name, zone, location, profile) 
VALUES ("Anderson's Neck", 6, "37.483525, -76.736816", "Mild saltiness moving to a sweet finish." );

-- Restaurant Seed Data

INSERT INTO restaurants (name, placeId, dumpLoc) 
VALUES ("East Coast Provisions", "ChIJJUsw0PETsYkRlVmMTiwxUrc", "37.53503447, -76.3467122" );


-- Dummy user seed data

INSERT INTO users (name, email, password)
VALUES ("aaron", "email@email.com", "password");

INSERT INTO users (name, email, password)
VALUES ("zach", "email@email.com", "password");

INSERT INTO users (name, email, password)
VALUES ("sean", "email@email.com", "password");

-- Starting oyster locations

SELECT * FROM rvaShucked_db.restaurants_has_oysters;

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (1, 2);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (1, 9);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (2, 2);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (3, 10);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (4, 5);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (4, 3);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (4, 4);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (5, 6);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (6, 1);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (7, 2);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (8, 10);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (9, 8);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (9, 1);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (10, 7);

INSERT INTO restaurants_has_oysters(restaurant_id, oyster_id)
VALUES (10, 9);