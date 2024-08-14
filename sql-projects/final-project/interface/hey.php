<!-- 
    Colleen Lemak
    DBMS F22
    Final Project
    29 November 2022
    To run: php user-interface.php
    Use localhost port for dynamic webpage
        - generate: php -S localhost:8000
        - to run in browser: http://localhost:8000/user-interface.php
    ***References .php files***
    Assumes a config.ini file for connection info
-->

<!-- Ensure functionality of landing page using MySQL database -->

<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="">

<body>
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
     
    <!-- Header layout -->
    <h1 style="font-size:1.5vw"><b>Country Information</b></h1>
    <h1 style="font-size:0.8vw">---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h1><br>
    <h1 style="font-size:1.0vw"><b>Add country:</b></h1>

    

    


</body>
</html>
