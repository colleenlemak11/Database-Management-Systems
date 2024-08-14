<!-- 
    Colleen Lemak
    DBMS Fall 2022
    Final Project
    29 November 2022
    To run: php user-interface.php
    Use localhost port for dynamic webpage
        - generate: php -S localhost:8000
        - to run in browser: http://localhost:8000/user-interface.php
    ***References .php files***
    Assumes a config.ini file for connection info
-->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<!-- Ensure functionality of landing page using MySQL database -->
  <?php
          // parse connection info
          $config = parse_ini_file("config.ini");
          $server = $config ["servername"];
          $username = $config ["username"];
          $password = $config ["password"];
          $database = "clemak_DB";

          // connect to db
          $cn = mysqli_connect($server, $username, $password, $database);

          // check connection
          if (!$cn) {
              die("Connection failed: " . mysqli_connect_error ());
          }
      ?>

<!------------------------------------------ Create landing page ------------------------------------------->

<!-- Navigation -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><b>WNBA</b> Phoenix Suns</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#schedule" class="w3-bar-item w3-button">Schedule</a>
      <a href="#standings" class="w3-bar-item w3-button">Standings</a>
      <a href="#roster" class="w3-bar-item w3-button">Roster</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
    <img class="w3-image" src="/cover-picture.png" alt="Home of the Mercury" width="1500" height="800">
    <div class="w3-display-bottom w3-margin-top w3-center">
        <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>HOME OF THE PHOENIX MERCURY</b></span> <span class="w3-hide-small w3-text-light-grey"> </span></h1>
    </div>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Ticket Section -->
  <div class="w3-container w3-padding-32" id="ticket-options">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Exploring Ticket Plans</h3>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Cloud 9 Partial Plan</div>
        <img src="/ticket1.jpg" alt="ticket1" style="width:100%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Courtside-Baseline</div>
        <img src="/ticket2.webp" alt="ticket2" style="width:100%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Courtside-Premium</div>
        <img src="/ticket3.jpg" alt="ticket3" style="width:100%; height:240px;">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Courtside-Sideline</div>
        <img src="/ticket4.webp" alt="ticket4" style="width:100%; height:240px;">
      </div>
    </div>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Premium Club Seat</div>
        <img src="/ticket5.webp" alt="ticket5" style="width:100%; height:235px;">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Season-Long Package</div>
        <img src="/ticket6.jpg" alt="ticket6" style="width:100%;">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Single-Game Corner</div>
        <img src="/ticket7.jpg" alt="ticket7" style="width:99%">
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">Single-Game Lower-Level</div>
        <img src="/ticket8.jpeg" alt="ticket8" style="width:99%">
      </div>
    </div>
  </div>

  <!-- Mission Statement -->
  <div class="w3-container w3-padding-32" id="mission-statement">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Our Commitment to Justice</h3>
    <p>Sitting at the intersection of women and girls, basketball, LGBTQ rights and people of color, the Phoenix Mercury 
        has utilized its platform to lift the voices of those previously silenced and to honor individuals making a difference in the community. In continuation of this commitment, the Phoenix Mercury, for the third year in a row, will elevate incredible women in sports, business and philanthropy who are making an impact in their communities with its Believe in Women award brought to you by Fry’s Food Stores.
    </p>
  </div>

  <!-- Staff Introduction -->
  <div class="w3-container w3-padding-32" id="mission-statement">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Meet Our Talented Staff</h3>
    <p>
      Below are four of our exceptional staff members who make the Phoenix Mercury possible!
    </p>
  </div>

  <div class="w3-row-padding w3-grayscale">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="/coach.jfif" style="width:100%; height:230px">
      <h3>Vanessa Nygaard</h3>
      <p class="w3-opacity">Head Coach</p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="/crst-rob.jpg" alt="Jane" style="width:100%; height:230px">
      <h3>Crystal Robinson</h3>
      <p class="w3-opacity">Assistant Coach</p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="/derrick-nill.jpg" alt="Mike" style="width:100%; height:230px">
      <h3>Derrick Nillissen</h3>
      <p class="w3-opacity">Physical Therapist & Strength and Conditioning Coach</p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="/hannah-w.jfif" alt="Dan" style="width:100%; height:230px">
      <h3>Hannah Wengertsman</h3>
      <p class="w3-opacity">Athletic Trainer</p>
    </div>
  </div>

  <!-- Contact Section -->
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Be an official Mercury member!</h3>
    <p>Join our email list to become a registered customer!</p>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Subject" required name="Subject">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Comment" required name="Comment">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SIGN UP
      </button>
    </form>
  </div>
  
  <!-- Image of Footprint Center -->
  <div class="w3-container">
    <img src="/footprint.jfif" class="w3-image" style="width:100%">
  </div>

  <!-- End page content -->
  </div>

  <!-- Footer -->
  <footer class="w3-center w3-black w3-padding-16">
    <p>Made possible by the <a href="https://www.wnba.com/" title="WNBA" target="_blank" class="w3-hover-text-green">WNBA</a></p>
  </footer>

<!------------------------------------------ Implement Functionality ------------------------------------------->






</body>
</html>
