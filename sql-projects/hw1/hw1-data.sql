
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: CPSC 321, Fall 2022
 * DATE: 09/19/22
 * HOMEWORK: #1
 * DESCRIPTION: This file uses SQL to insert instances, or values, into our schema.
 **********************************************************************/

/* Insert statements */

/* 
Inserts 3 instances into PricingPlan
*/
INSERT INTO PricingPlan (plan_name, price_per_min, unlock_price, rate_start_min) VALUES ('Flash', 10, 6, 1);
INSERT INTO PricingPlan (plan_name, price_per_min, unlock_price, rate_start_min) VALUES ('Zoom-It', 12, 7, 0);
INSERT INTO PricingPlan (plan_name, price_per_min, unlock_price, rate_start_min) VALUES ('Runner', 9, 4, 2);

/*
Inserts 3 instances into VehicleType
*/
INSERT INTO VehicleType (vt_id, form_factor, make, model, trim_level, alt_name, max_spd, max_range, weight) VALUES (001, 'e-scooter', 'Lime-S', 'Ninebot', 'ES9', 'Lime-S ES9', 14.8, 30.3, 28.4);
INSERT INTO VehicleType (vt_id, form_factor, make, model, trim_level, alt_name, max_spd, max_range, weight) VALUES (006, 'e-bike', 'Segway', 'Gen-5', 'EB5', 'Segway EB5', 26.1, 45.7, 34.1);
INSERT INTO VehicleType (vt_id, form_factor, make, model, trim_level, alt_name, max_spd, max_range, weight) VALUES (014, 'e-bike', 'Segway', 'Gen-3', 'EB3', 'Segway EB3', 21.9, 38.8, 30.6);

/*
Inserts 6 instances into AllowedPlan
*/
INSERT INTO AllowedPlan (vt_id, price_plan) VALUES (001, 'Flash');
INSERT INTO AllowedPlan (vt_id, price_plan) VALUES (001, 'Zoom-It');
INSERT INTO AllowedPlan (vt_id, price_plan) VALUES (001, 'Runner');
INSERT INTO AllowedPlan (vt_id, price_plan) VALUES (006, 'Flash');
INSERT INTO AllowedPlan (vt_id, price_plan) VALUES (014, 'Flash');
INSERT INTO AllowedPlan (vt_id, price_plan) VALUES (014, 'Zoom-It');

/*
Inserts 3 instances into DefaultPlan
*/
INSERT INTO DefaultPlan (vt_id, price_plan) VALUES (001, 'Runner');
INSERT INTO DefaultPlan (vt_id, price_plan) VALUES (006, 'Zoom-It');
INSERT INTO DefaultPlan (vt_id, price_plan) VALUES (014, 'Flash');

/*
Inserts 3 instances into Customer
*/
INSERT INTO Customer (c_id, first_name, last_name, email) VALUES (522460, 'Penny', 'Rhodes', 'prhodes@gmail.com');
INSERT INTO Customer (c_id, first_name, last_name, email) VALUES (472155, 'Joshua', 'Alber', 'alber5@yahoo.com');
INSERT INTO Customer (c_id, first_name, last_name, email) VALUES (962201, 'Tarin', 'Dean', 'tdean@gmail.com');

/*
Inserts 3 instances into Vehicle
*/
INSERT INTO Vehicle (v_id, vt_id, in_circ, is_reversed, is_disabled, lat, lon, cur_fuel_pct, cur_range) VALUES (15904, 001, 0, 0, 0, 88.07, -114.62, 36, 22.4);
INSERT INTO Vehicle (v_id, vt_id, in_circ, is_reversed, is_disabled, lat, lon, cur_fuel_pct, cur_range) VALUES (30081, 006, 0, 1, 0, -14.71, 161.09, 65, 33.2);
INSERT INTO Vehicle (v_id, vt_id, in_circ, is_reversed, is_disabled, lat, lon, cur_fuel_pct, cur_range) VALUES (61772, 014, 0, 0, 0, -29.20, -72.27, 92, 28.1);

/*
Inserts 4 instances into Trip
DATETIME: 'YYYY-MM-DD HH:MM:SS'
*/
INSERT INTO Trip (t_id, c_id, v_id, price_plan, start_dtime, end_dtime, start_lat, start_lon, end_lat, end_lon) VALUES (1370, 522460, 15904, 'Runner', '2022-06-01 10:33:52', '2022-06-01 10:40:09', 88.07, -114.62, 80.51, -116.22);
INSERT INTO Trip (t_id, c_id, v_id, price_plan, start_dtime, end_dtime, start_lat, start_lon, end_lat, end_lon) VALUES (0961, 522460, 30081, 'Flash', '2019-08-28 13:45:25', '2019-08-28 13:50:55', -14.71, 161.09, -14.22, 140.95);
INSERT INTO Trip (t_id, c_id, v_id, price_plan, start_dtime, end_dtime, start_lat, start_lon, end_lat, end_lon) VALUES (1055, 962201, 61772, 'Zoom-It', '2020-11-04 17:21:06', '2020-11-04 17:52:04', -29.20, -72.27, -1.51, -50.06);
INSERT INTO Trip (t_id, c_id, v_id, price_plan, start_dtime, end_dtime, start_lat, start_lon, end_lat, end_lon) VALUES (1882, 962201, 30081, 'Flash', '2022-03-26 18:44:18', '2022-03-26 19:05:13', 84.11, -100.51, 90.54, -90.66);


/* Select statements to print tables */

SELECT * FROM PricingPlan;
SELECT * FROM VehicleType;
SELECT * FROM AllowedPlan;
SELECT * FROM DefaultPlan;
SELECT * FROM Customer;
SELECT * FROM Vehicle;
SELECT * FROM Trip;


