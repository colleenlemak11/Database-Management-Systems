
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: CPSC 321, Fall 2022
 * DATE: 10/11/22
 * HOMEWORK: #2
 * DESCRIPTION: This file runs SQL queries on tables in hw2-part-1.
 **********************************************************************/

-- TODO: Implement the queries in part 2 below. For each be sure to
--       copy each of the problem statements. 

/*
Question 1: Write an SQL query to find the countries with low inflation (you choose) and a high gdp (you
choose). Your query should return all of the country attributes and your answers should be
sorted from lowest to highest inflation.
*/
SELECT *
FROM Country
WHERE inflation < 1.7 AND gdp > 2.0
ORDER BY inflation ASC;


/*
Question 2: Write an SQL query using a “comma join” (i.e., without join syntax) to find all provinces that
have a small total area that are in a country with high inflation. Your query should return the
country code, country name, inflation, province name, and area and results should be sorted
from highest to lowest inflation, then alphabetically by country code (for countries with the
same inflation), and then by smallest to largest area.
*/
SELECT c.country_code, c.country_name, c.inflation, p.province_name, p.area
FROM Country c, Province p
WHERE (p.area < 50000) AND (c.inflation > 1.5) AND (c.country_code = p.country_code)
ORDER BY c.inflation DESC, c.country_code ASC, p.area ASC;


/*
Question 3: Rewrite your query in (2) to use JOIN syntax instead of a comma join.
*/
SELECT c.country_code, c.country_name, c.inflation, p.province_name, p.area
FROM Country c JOIN Province p USING (country_code)
WHERE (p.area < 50000) AND (c.inflation > 1.5)
ORDER BY c.inflation DESC, c.country_code ASC, p.area ASC;


/*
Question 4: Write an SQL query that finds the unique set of all provinces that have at least one city
with a population greater than a specific value (note that a province is identified by both the
province name and the country it is in). Return the country code, country name, province
name, and province area. Your query must use comma joins and should only return one row
per matching province.
*/
SELECT DISTINCT p.country_code, c.country_name, p.province_name, p.area
FROM Country c, Province p, City ci
WHERE (ci.province_name = p.province_name) AND (ci.population > 15000) AND (c.country_code = p.country_code);


/*
Question 5: Rewrite your query from (4) using JOIN syntax for all of the joins.
*/
SELECT DISTINCT c.country_code, c.country_name, p.province_name, p.area
FROM Province p
	JOIN Country c USING (country_code)
	JOIN City ci USING (country_code, province_name)
WHERE (ci.population > 15000);

/*
Question 6: Write an SQL query that finds the unique set of all provinces with at least two cities having
a population greater than a specific value. Return the country code, country name, province
name, and province area. Your query must use comma joins, and must return only one row
per matching province.
*/
SELECT DISTINCT c.country_code, c.country_name, p.province_name, p.area
FROM Country c, Province p, City ci_one, City ci_two
WHERE (ci_one.population > 7000) AND (ci_two.population > 7000) AND (ci_one.province_name = p.province_name) AND (ci_one.country_code = p.country_code) AND (ci_two.province_name = p.province_name) AND (ci_two.country_code = p.country_code) AND (p.country_code = c.country_code);

/*
Question 7: Rewrite your query from (6) using JOIN syntax for all of the joins.
*/
SELECT DISTINCT c.country_code, c.country_name, p.province_name, p.area
FROM Province p
	JOIN Country c USING (country_code)
    JOIN City ci_one USING (province_name)
    JOIN City ci_two USING (province_name)
WHERE (ci_one.population > 7000) AND (ci_two.population > 7000);

/*
Question 8: Write an SQL query that finds pairs of different cities with the same population. A city
is considered to be different if it has a different name, is in a different province, and/or is
in a different country. As examples, Portland and Salem are different cities, and Portland, Oregon 
and Portland, Maine are also different cities. Return the city name, province name, and country code 
for each city along with the population of both cities (so seven attributes in total). 
Your query must use JOIN syntax.
*/
SELECT ci_one.city_name, ci_one.province_name, ci_one.country_code, ci_one.population, ci_two.city_name, ci_two.province_name, ci_two.country_code, ci_two.population
FROM City ci_one JOIN City ci_two USING (population)
WHERE ((ci_one.population = ci_two.population) AND (ci_one.city_name != ci_two.city_name) AND (ci_one.province_name != ci_two.province_name)) OR (ci_one.country_code != ci_two.country_code);


/*
Question 9: Write an SQL query that finds all countries with a high GDP and low inflation that border a
country with a low GDP and high inflation. Your query should return the country code and
country name. Your query must use comma joins and should only return unique countries
(i.e., one row per matching country).
*/
SELECT DISTINCT c.country_code, c.country_name
FROM Country c, Country f, Border b
WHERE (c.country_code = b.country_code_1) AND (c.gdp > 2.0) AND (c.inflation < 1.7) AND (f.country_code = b.country_code_2) AND (f.gdp < 1.5) AND (f.inflation > 1.8);


/*
Question 10: Rewrite your query from (9) using JOIN syntax for all of the joins.
*/
SELECT DISTINCT c.country_code, c.country_name
FROM Country c JOIN Country f JOIN Border b ON (c.country_code = b.country_code_1) AND (f.country_code = b.country_code_2)
WHERE ((c.gdp > 2.0) AND (c.inflation < 1.7)) AND ((f.gdp < 1.5) AND (f.inflation > 1.8));




