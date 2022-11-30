
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: CPSC 321, Fall 2022
 * DATE: 11/21/22
 * HOMEWORK: Project Step 4
 * DESCRIPTION: Stores create table statements to build schema for final project.
 **********************************************************************/

CREATE TABLE Team (
	team_name VARCHAR(50),
    ranked INT UNSIGNED NOT NULL,
    UNIQUE (ranked),
    PRIMARY KEY (team_name)
);

CREATE TABLE Ticket (
	ticket_plan VARCHAR(50),
    price DOUBLE UNSIGNED NOT NULL,
    PRIMARY KEY (ticket_plan)
);

CREATE TABLE Vendor (
	team_name VARCHAR(50),
    ticket_plan VARCHAR(50),
    FOREIGN KEY (team_name) REFERENCES Team (team_name),
    FOREIGN KEY (ticket_plan) REFERENCES Ticket (ticket_plan)
);

CREATE TABLE Customer (
	customer_id BIGINT UNSIGNED,
    c_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE Buyer (
	ticket_plan VARCHAR(50),
    customer_id BIGINT UNSIGNED,
    FOREIGN KEY (ticket_plan) REFERENCES Ticket (ticket_plan),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

CREATE TABLE Player (
	player_name VARCHAR(100),
    jersey_num INT UNSIGNED NOT NULL,
    hometown VARCHAR(100) NOT NULL,
    position VARCHAR(20) NOT NULL,
    height VARCHAR(20) NOT NULL,
    weight INT UNSIGNED NOT NULL,
    experience INT UNSIGNED NOT NULL,
    PRIMARY KEY (player_name)
);

CREATE TABLE Roster (
	team_name VARCHAR(50),
    player_name VARCHAR(100),
    FOREIGN KEY (team_name) REFERENCES Team (team_name),
    FOREIGN KEY (player_name) REFERENCES Player (player_name)
);

CREATE TABLE Statistics (
	season INT UNSIGNED,
    player_name VARCHAR(100),
    PPG DOUBLE UNSIGNED NOT NULL,
    RPG DOUBLE UNSIGNED NOT NULL,
    APG DOUBLE UNSIGNED NOT NULL,
    FG DOUBLE UNSIGNED NOT NULL,
    three_pt DOUBLE UNSIGNED NOT NULL,
    FT DOUBLE UNSIGNED NOT NULL,
    turnovers DOUBLE UNSIGNED NOT NULL,
    PRIMARY KEY (season, player_name)
);

CREATE TABLE Schedule (
	game_day DATE,
    W_or_L VARCHAR(10) NOT NULL,
    competitor VARCHAR(50) NOT NULL,
    arena VARCHAR(100) NOT NULL,
    PRIMARY KEY (game_day)
);

CREATE TABLE Standings (
	season INT UNSIGNED,
    team VARCHAR(100),
    ranked INT UNSIGNED NOT NULL,
    W INT UNSIGNED NOT NULL,
    L INT UNSIGNED NOT NULL,
    pct DOUBLE UNSIGNED NOT NULL,
    home VARCHAR(10) NOT NULL,
	road VARCHAR(10) NOT NULL,
    PRIMARY KEY (season, team),
    FOREIGN KEY (team) REFERENCES Team (team_name)
);

CREATE TABLE Staff (
	staff_id INT UNSIGNED,
    s_name VARCHAR(100),
    job_title VARCHAR(50),
    college_attended VARCHAR(100),
    PRIMARY KEY (staff_id, job_title)
);

DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Standings;
DROP TABLE IF EXISTS Schedule;
DROP TABLE IF EXISTS Statistics;
DROP TABLE IF EXISTS Roster;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Buyer;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Vendor;
DROP TABLE IF EXISTS Ticket;
DROP TABLE IF EXISTS Team;





