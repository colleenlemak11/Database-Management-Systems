
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: CPSC 321, Fall 2022
 * DATE: 09/19/22
 * HOMEWORK: #1
 * DESCRIPTION: Uses MySQL insert-queries to populate project tables.
 **********************************************************************/

/* Team */
INSERT INTO Team (team_name, ranked) VALUES ("Las Vegas Aces", 1);
INSERT INTO Team (team_name, ranked) VALUES ("Chicago Sky", 2);
INSERT INTO Team (team_name, ranked) VALUES ("Connecticut Sun", 3);
INSERT INTO Team (team_name, ranked) VALUES ("Seattle Storm", 4);
INSERT INTO Team (team_name, ranked) VALUES ("Washington Mystics", 5);
INSERT INTO Team (team_name, ranked) VALUES ("Dallas Wings", 6);
INSERT INTO Team (team_name, ranked) VALUES ("New York Liberty", 7);
INSERT INTO Team (team_name, ranked) VALUES ("Phoenix Mercury", 8);
INSERT INTO Team (team_name, ranked) VALUES ("Minnesota Lynx", 9);
INSERT INTO Team (team_name, ranked) VALUES ("Atlanta Dream", 10);
INSERT INTO Team (team_name, ranked) VALUES ("Los Angeles Sparks", 11);
INSERT INTO Team (team_name, ranked) VALUES ("Indiana Fever", 12);

/* Ticket */
INSERT INTO Ticket (ticket_plan, price) VALUES ("Single-Game Corner", 60);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Single-Game Lower-Level", 75);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Premium Club Seat", 135);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Courtside-Premium", 445);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Courtside-Sideline", 360);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Courtside-Baseline", 345);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Cloud 9 Partial Plan", 441);
INSERT INTO Ticket (ticket_plan, price) VALUES ("Season-Long Package", 5300);

/* Vendor */
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Las Vegas Aces", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Chicago Sky", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Connecticut Sun", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Seattle Storm", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Washington Mystics", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Dallas Wings", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("New York Liberty", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Phoenix Mercury", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Minnesota Lynx", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Atlanta Dream", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Los Angeles Sparks", "Season-Long Package");

INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Single-Game Corner");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Single-Game Lower-Level");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Premium Club Seat");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Courtside-Premium");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Courtside-Sideline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Courtside-Baseline");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Cloud 9 Partial Plan");
INSERT INTO Vendor (team_name, ticket_plan) VALUES ("Indiana Fever", "Season-Long Package");

/* Customer */
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (13362, "Jonathon Rola", "jrola@gonzaga.edu", "100 Maplewood Ave Spokane, WA", 8300944811);
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (88374, "Abagail Liger", "liger12@yahoo.net", "9 Belling Court Portland, OR", 6198394701);
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (09266, "Paul Sill", "paulsill@google.com", "207 Oldan Drive Bozeman, MT", 2619274016);
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (74921, "Katherine McKnight", "katmcknight@bing.com", "500 W Mulling Court Los Angeles, CA", 6478362799);
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (85733, "Nelson Waker", "wakernelson7@ny.edu", "609 Raymond Ave Albany, NY", 7199200470);
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (94781, "Bridget Dawns", "bdawns@psu.edu", "57 N Frayer Street Pittsburgh, PA", 9628182703);
INSERT INTO Customer (customer_id, c_name, email, address, phone) VALUES (83922, "Marvin Jacobian", "marvinjacobian@scu.edu", "8115 Hillsdale Drive Santa Clara, CA", 9001718332);

/* Buyer */
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Single-Game Corner", 13362);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Premium Club Seat", 88374);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Courtside-Sideline", 09266);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Season-Long Package", 74921);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Premium Club Seat", 85733);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Single-Game Lower-Level", 94781);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Cloud 9 Partial Plan", 83922);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Season-Long Package", 13362);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Courtside-Baseline", 94781);
INSERT INTO Buyer (ticket_plan, customer_id) VALUES ("Courtside-Premium", 88374);

/* Player */
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Sophie Cunningham", 9, "Missouri, USA", "G", "6'1", 170, 3);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Kaela Davis", 3, "South Carolina, USA", "F", "6'2", 170, 4);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Diamond DeShields", 1, "Tennessee, USA", "G", "6'1", 172, 4);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Skylar Diggins-Smith", 4, "Notre Dame, USA", "G", "5'9", 145, 8);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Reshanda Gray", 1, "California, USA", "F", "6'2", 192, 5);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Brittney Griner", 42, "Baylor, USA", "C", "6'9", 205, 9);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Megan Gustafson", 10, "Iowa, USA", "C", "6'3", 195, 3);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Kia Nurse", 0, "Connecticut, Canada", "G", "6'0", 170, 4);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Shey Peddy", 11, "Temple, USA", "G", "5'7", 145, 3);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Jennie Simms", 25, "Old Dominion, USA", "G", "6'0", 165, 1);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Diana Taurasi", 3, "Connecticut, USA", "G", "6'0", 163, 17);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Sam Thomas", 14, "Arizona, USA", "G-F", "6'0", 165, 0);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Yvonne Turner", 22, "Nebraska, USA", "G", "5'10", 131, 3);
INSERT INTO Player (player_name, jersey_num, hometown, position, height, weight, experience) VALUES ("Brianna Turner", 21, "Notre Dame, USA", "F", "6'3", 170, 3);

/* Roster */
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Sophie Cunningham");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Kaela Davis");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Diamond DeShields");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Skylar Diggins-Smith");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Reshanda Gray");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Brittney Griner");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Megan Gustafson");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Kia Nurse");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Shey Peddy");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Jennie Simms");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Diana Taurasi");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Sam Thomas");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Yvonne Turner");
INSERT INTO Roster (team_name, player_name) VALUES ("Phoenix Mercury", "Brianna Turner");

/* Statistics */
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Skylar Diggins-Smith", 19.7, 4.0, 5.5, 42.9, 29.6, 84.4, 2.7);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Diana Taurasi", 16.7, 3.4, 3.9, 37.3, 33.7, 89.4, 2.7);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Diamond DeShields", 13.1, 3.8, 2.2, 38.8, 23.6, 76.5, 2.3);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Sophie Cunningham", 12.6, 4.4, 1.6, 44.9, 40.0, 87.5, 1.0);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Shey Peddy", 9.9, 3.8, 3.4, 41.8, 32.9, 88.9, 1.4);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Kaela Davis", 4.6, 1.2, 0.0, 69.2, 66.7, 75.0, 0.6);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Brianna Turner", 4.3, 6.8, 2.3, 60.7, 0.0, 50.0, 1.4);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Megan Gustafson", 3.8, 1.9, 0.5, 54.9, 46.2, 76.5, 0.7);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Jennie Simms", 3.4, 2.2, 0.9, 47.6, 21.1, 78.9, 1.0);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Yvonne Turner", 3.3, 0.7, 2.3, 40.0, 0.0, 100, 0);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Reshanda Gray", 2.0, 1.5, 0.6, 40.5, 9.1, 33.3, 1.1);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Sam Thomas", 0.4, 0.1, 0.3, 21.1, 6.7, 100, 0.2);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Brittney Griner", 0, 0, 0, 0, 0, 0, 0);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2022, "Kia Nurse", 0, 0, 0, 0, 0, 0, 0);

INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Brittney Griner", 20.5, 9.5, 2.7, 57.5, 44.4, 84.6, 2.2);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Skylar Diggins-Smith", 17.7, 3.2, 5.3, 45.2, 37.0, 81.8, 2.6);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Diana Taurasi", 15.2, 4.4, 4.9, 36.5, 33.9, 86.1, 2.9);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Kia Nurse", 9.5, 3.5, 1.8, 35.9, 35.3, 79.0, 1.5);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Brianna Turner", 7.8, 9.4, 1.8, 55.4, 0.0, 71.7, 1.5);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Diamond DeShields", 13.1, 3.8, 2.2, 38.8, 23.6, 76.5, 2.3);
INSERT INTO Statistics (season, player_name, PPG, RPG, APG, FG, three_pt, FT, turnovers) VALUES (2021, "Sophie Cunningham", 5.4, 2.0, 1.1, 43.7, 41.0, 70.4, 0.5);

/* Schedule */
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-06', 'L', "Aces", "Footprint Center");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-11', 'W', "Storm", "Footprint Center");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-14', 'W', "Storm", "Climate Pledge Arena");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-17', 'L', "Aces", "Michelob ULTRA Arena");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-19', 'L', "Wings", "Footprint Center");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-21', 'L', "Aces", "Michelob ULTRA Arena");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-25', 'L', "Sparks", "Crypto.com Arena");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-29', 'L', "Dream", "Gateway Center Arena");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-05-31', 'L', "Sky", "Wintrust Arena");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-04-05', 'W', "Sparks", "Footprint Center");
INSERT INTO Schedule (game_day, W_or_L, competitor, arena) VALUES ('2022-04-10', 'W', "Dream", "Footprint Center");

/* Standings */
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Las Vegas Aces", 1, 26, 10, 0.722, "13-5", "13-5");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Chicago Sky", 2, 26, 10, 0.722, "14-4", "12-6");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Connecticut Sun", 3, 25, 11, 0.694, "13-5", "12-6");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Seattle Storm", 4, 22, 14, 0.611, "13-5", "9-9");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Washington Mystics", 5, 22, 14, 0.611, "12-6", "10-8");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Dallas Wings", 6, 18, 18, 0.500, "8-10", "10-8");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "New York Liberty", 7, 16, 20, 0.444, "9-9", "7-11");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Phoenix Mercury", 8, 15, 21, 0.417, "11-7", "4-14");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Minnesota Lynx", 9, 14, 22, 0.389, "7-11", "7-11");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Atlanta Dream", 10, 14, 22, 0.389, "8-10", "6-12");
INSERT INTO Standings (season, team, ranked, W, L, pct, home, road) VALUES (2022, "Los Angeles Sparks", 11, 13, 23, 0.361, "7-11", "6-12");

/* Staff */
INSERT INTO Staff (staff_id, s_name, job_title, college_attended) VALUES (719982, "Vanessa Nygaard", "Head Coach", "Stanford");
INSERT INTO Staff (staff_id, s_name, job_title, college_attended) VALUES (93077, "Crystal Robinson", "Assistant Coach", "Southeastern Oklahoma State");
INSERT INTO Staff (staff_id, s_name, job_title, college_attended) VALUES (88261, "Derrick Nillissen", "Physical Therapist", "Carroll University");
INSERT INTO Staff (staff_id, s_name, job_title, college_attended) VALUES (88261, "Derrick Nillissen", "Strength and Conditioning Coach", "Carroll University");
INSERT INTO Staff (staff_id, s_name, job_title, college_attended) VALUES (43625, "Hannah Wengertsman", "Athletic Trainer", "Boston University");





































