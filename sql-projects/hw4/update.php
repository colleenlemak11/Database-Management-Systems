
<!-- Update call -->
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

        $query = "UPDATE Country SET gdp='$_POST[gdp]', inflation='$_POST[inflation]' WHERE country_name = '$_POST[Update]'";
        $result = mysqli_query($cn, $query);
        $q = "SELECT * FROM Country WHERE country_name = '$_POST[Update]'";
        $rs = mysqli_query($cn, $q);
        $ct = 0;

        // print country info if entry is valid
        while($row = mysqli_fetch_assoc($rs)) {
            echo nl2br("<i>Update Successful:</i>\n\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- Country Code: <b>$row[country_code]</b>\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- Country Name: <b>$row[country_name]</b>\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- New Country Per Capita GDP: $<b>$row[gdp]</b>\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- New Country Inflation: <b>$row[inflation]%</b>\n");
            $ct++;
        }
        if ($ct == 0) {
            echo "***Country was an invalid or a duplicate entry.***";
        }
    ?>
    <br><br><button onclick="window.location='country.php';">Go Back</button>
</body>
</html>

