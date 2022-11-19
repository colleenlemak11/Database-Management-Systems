
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: CPSC 321, Fall 2022
 * DATE: 09/19/22
 * HOMEWORK: #1
 * DESCRIPTION: This file defines a schema using SQL statements and comments.
 **********************************************************************/

/* Create Table Statements */

/*
Creates table for PricingPlan
Primary key: plan_name
Foreign key: N/A
*/
CREATE TABLE PricingPlan (
    plan_name VARCHAR(50) NOT NULL,
    price_per_min INT UNSIGNED NOT NULL,
    unlock_price INT UNSIGNED NOT NULL,
    rate_start_min INT UNSIGNED NOT NULL,
    PRIMARY KEY (plan_name)
);

/*
Creates table for VehicleType
Primary key: vt_id
Foreign key: N/A
*/
CREATE TABLE VehicleType (
    vt_id INT UNSIGNED NOT NULL,
    form_factor VARCHAR(9) NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    trim_level VARCHAR(3) NOT NULL,
    alt_name VARCHAR(10), -- optional data
    max_spd FLOAT(3, 1), -- FLOAT(all_digits, decimal_places) -> 14.8 mph FLOAT(3, 1)
    max_range FLOAT(3, 1) NOT NULL,
    weight FLOAT(3, 1),
    PRIMARY KEY (vt_id)
);

/*
Creates table for AllowedPlan
Primary key: vt_id, price_plan
Foreign key: AllowedPlan.vt_id references VehicleType.vt_id, AllowedPlan.price_plan references PricingPlan.plan_name
*/
CREATE TABLE AllowedPlan (
    vt_id INT UNSIGNED NOT NULL,
    price_plan VARCHAR(50) NOT NULL,
    PRIMARY KEY (vt_id, price_plan),
    FOREIGN KEY (vt_id) REFERENCES VehicleType(vt_id),
    FOREIGN KEY (price_plan) REFERENCES PricingPlan(plan_name)
);

/*
Creates table for DefaultPlan
Primary key: vt_id
Foreign key: DefaultPlan.vt_id references VehicleType.vt_id
*/
CREATE TABLE DefaultPlan (
    vt_id INT UNSIGNED NOT NULL,
    price_plan VARCHAR(50) NOT NULL,
    PRIMARY KEY (vt_id),
    FOREIGN KEY (vt_id) REFERENCES VehicleType(vt_id),
    FOREIGN KEY (price_plan) REFERENCES PricingPlan(plan_name)
);

/*
Creates table for Customer
Primary key: c_id
Foreign key: N/A
*/
CREATE TABLE Customer (
    c_id INT UNSIGNED NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    UNIQUE (email),
    PRIMARY KEY (c_id)
);

/*
Creates table for Vehicle
Primary key: v_id
Foreign key: Vehicle.vt_id references VehicleType.vt_id
*/
CREATE TABLE Vehicle (
    v_id INT UNSIGNED NOT NULL,
    vt_id INT UNSIGNED NOT NULL,
    in_circ BOOLEAN NOT NULL,
    is_reversed BOOLEAN NOT NULL,
    is_disabled BOOLEAN NOT NULL,
    lat FLOAT(10, 6) NOT NULL,
    lon FLOAT(10, 6) NOT NULL,
    cur_fuel_pct INT UNSIGNED NOT NULL,
    cur_range FLOAT(4) UNSIGNED NOT NULL,
    PRIMARY KEY (v_id),
    FOREIGN KEY (vt_id) REFERENCES VehicleType(vt_id)
);

/*
Creates table for Trip
Primary key: t_id
Foreign key: Trip.c_id references Customer.c_id, Trip.v_id references Vehicle.v_id, Trip.price_plan references PricingPlan.plan_name
*/
CREATE TABLE Trip (
    t_id INT UNSIGNED NOT NULL,
    c_id INT UNSIGNED NOT NULL,
    v_id INT UNSIGNED NOT NULL,
    price_plan VARCHAR(50) NOT NULL,
    start_dtime DATETIME NOT NULL,
    end_dtime DATETIME NOT NULL,
    start_lat FLOAT(20) NOT NULL,
    start_lon FLOAT(20) NOT NULL,
    end_lat FLOAT(20) NOT NULL,
    end_lon FLOAT(20) NOT NULL,
    PRIMARY KEY (t_id),
    FOREIGN KEY (c_id) REFERENCES Customer(c_id),
    FOREIGN KEY (v_id) REFERENCES Vehicle(v_id),
    FOREIGN KEY (price_plan) REFERENCES PricingPlan(plan_name)
);


/* Drop Table Statements */

DROP TABLE IF EXISTS PricingPlan;
DROP TABLE IF EXISTS VehicleType;
DROP TABLE IF EXISTS AllowedPlan;
DROP TABLE IF EXISTS DefaultPlan;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Vehicle;
DROP TABLE IF EXISTS Trip;







