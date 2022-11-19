
<!-- Removal call -->
<!DOCTYPE html>
<html>
<body>
    
    <h1 style="font-size:1.5vw"><b>Country Information</b></h1>
    <h1 style="font-size:0.8vw">-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h1><br>

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

        $q = "SELECT country_code FROM Country WHERE country_name='$_POST[Remove]'";
        $rs = mysqli_query($cn, $q);

        $ct = 0;

        while($row = mysqli_fetch_assoc($rs)) {
            echo nl2br("<i>The country with the name $row[country_code] was successfully removed.</i>");
            $query = "DELETE FROM Country WHERE country_code='$row[country_code]'";
            $result = mysqli_query($cn, $query);
            $ct++;
        }
        if ($ct == 0) {
            echo "***Country was an invalid or a duplicate entry.***";
        }
    ?>
    <button onclick="window.location='country.php';">Go Back</button>
</body>
</html>
