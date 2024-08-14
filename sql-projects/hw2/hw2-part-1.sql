
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: CPSC 321, Fall 2022
 * DATE: 10/11/22
 * HOMEWORK: #2
 * DESCRIPTION: This file defines a schema using SQL statements and comments.
 **********************************************************************/

/* Create Table Statements */

CREATE TABLE Country (
	country_code varchar(3) NOT NULL,
    country_name varchar(100) NOT NULL,
    gdp DOUBLE NOT NULL,
    inflation DOUBLE NOT NULL,
    PRIMARY KEY (country_code)
);

CREATE TABLE Province (
	province_name varchar(100) NOT NULL,
    country_code varchar(3) NOT NULL,
    area DOUBLE UNSIGNED NOT NULL,
    PRIMARY KEY (province_name, country_code),
    FOREIGN KEY (country_code) REFERENCES Country(country_code)
);

CREATE TABLE City (
	city_name varchar(100) NOT NULL,
    province_name varchar(100) NOT NULL,
    country_code varchar(3) NOT NULL,
    population INT UNSIGNED NOT NULL,
    PRIMARY KEY (city_name, province_name, country_code),
    FOREIGN KEY (province_name, country_code) REFERENCES Province(province_name, country_code)
);

CREATE TABLE Border (
	country_code_1 varchar(3) NOT NULL,
    country_code_2 varchar(3) NOT NULL,
    border DOUBLE UNSIGNED NOT NULL,
    PRIMARY KEY (country_code_1, country_code_2),
    FOREIGN KEY (country_code_1) REFERENCES Country(country_code),
    FOREIGN KEY (country_code_2) REFERENCES Country(country_code)
);


/* Insert Table Statements */

INSERT INTO Country VALUES ('ABC', 'Country_One', 1.4, 2.0);
INSERT INTO Country VALUES ('DEF', 'Country_Two', 2.5, 1.6);
INSERT INTO Country VALUES ('GHI', 'Country_Three', 2.2, 1.4);

INSERT INTO Province VALUES ('Province_One', 'ABC', 800000);
INSERT INTO Province VALUES ('Province_Two', 'ABC', 40000);
INSERT INTO Province VALUES ('Province_Three', 'ABC', 10000);

INSERT INTO Province VALUES ('Province_Four', 'DEF', 200000);
INSERT INTO Province VALUES ('Province_Five', 'DEF', 7000);
INSERT INTO Province VALUES ('Province_Six', 'DEF', 168000);

INSERT INTO Province VALUES ('Province_Seven', 'GHI', 72000);
INSERT INTO Province VALUES ('Province_Eight', 'GHI', 900000);
INSERT INTO Province VALUES ('Province_Nine', 'GHI', 8000);

INSERT INTO City VALUES ('City_One', 'Province_One', 'ABC', 12500);
INSERT INTO City VALUES ('City_Two', 'Province_One', 'ABC', 30000);
INSERT INTO City VALUES ('City_Three', 'Province_One', 'ABC', 50000);

INSERT INTO City VALUES ('City_Four', 'Province_Two', 'ABC', 20000);
INSERT INTO City VALUES ('City_Five', 'Province_Two', 'ABC', 9000);
INSERT INTO City VALUES ('City_Six', 'Province_Two', 'ABC', 10000);

INSERT INTO City VALUES ('City_Seven', 'Province_Three', 'ABC', 20000);
INSERT INTO City VALUES ('City_Eight', 'Province_Three', 'ABC', 9800);
INSERT INTO City VALUES ('City_Nine', 'Province_Three', 'ABC', 80000);

INSERT INTO City VALUES ('City_Ten', 'Province_Four', 'DEF', 900000);
INSERT INTO City VALUES ('City_Eleven', 'Province_Four', 'DEF', 200000);
INSERT INTO City VALUES ('City_Twelve', 'Province_Four', 'DEF', 6700);

INSERT INTO City VALUES ('City_Thirt', 'Province_Five', 'DEF', 900000);
INSERT INTO City VALUES ('City_Fourt', 'Province_Five', 'DEF', 710000);
INSERT INTO City VALUES ('City_Fift', 'Province_Five', 'DEF', 11000);

INSERT INTO City VALUES ('City_Sixt', 'Province_Six', 'DEF', 30000);
INSERT INTO City VALUES ('City_Sevent', 'Province_Six', 'DEF', 820000);
INSERT INTO City VALUES ('City_Eighteen', 'Province_Six', 'DEF', 10000);

INSERT INTO City VALUES ('City_Ninet', 'Province_Seven', 'GHI', 10000);
INSERT INTO City VALUES ('City_Twenty', 'Province_Seven', 'GHI', 50000);
INSERT INTO City VALUES ('City_TwentyOne', 'Province_Seven', 'GHI', 3000);

INSERT INTO City VALUES ('City_TwentyTwo', 'Province_Eight', 'GHI', 100000);
INSERT INTO City VALUES ('City_TwentyThree', 'Province_Eight', 'GHI', 6000);
INSERT INTO City VALUES ('City_TwentyFour', 'Province_Eight', 'GHI', 73000);

INSERT INTO City VALUES ('City_TwentyFive', 'Province_Nine', 'GHI', 17000);
INSERT INTO City VALUES ('City_TwentySix', 'Province_Nine', 'GHI', 12000);
INSERT INTO City VALUES ('City_TwentySev', 'Province_Nine', 'GHI', 30000);

INSERT INTO Border VALUES ('GHI', 'ABC', 20000);
INSERT INTO Border VALUES ('DEF', 'ABC', 20000);


/* Drop Table Statements */

DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS Province;
DROP TABLE IF EXISTS City;
DROP TABLE IF EXISTS Border;

