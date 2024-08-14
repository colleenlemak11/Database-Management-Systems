
<!-- Insertion call -->
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

        $query = "INSERT INTO Country VALUES ('$_POST[code]','$_POST[name]','$_POST[gdp]','$_POST[inflation]')";
        $result = mysqli_query($cn, $query);
    ?>

    <?php
        // print country info if entry is valid
        if ($result == true) {
            echo nl2br("<i>Country Added Successfully:</i>\n\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- Country Code: <b>$_POST[code]</b>\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- Country Name: <b>$_POST[name]</b>\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- Country Per Capita GDP: $<b>$_POST[gdp]</b>\n");
            echo str_repeat('&nbsp;', 20);
            echo nl2br("- Country Inflation: <b>$_POST[inflation]%</b>\n");
        }
        else {
            echo "***Country was an invalid or a duplicate entry.***";
        }
        mysqli_close($conn);
    ?>
</body>
</html>

<br><br><button onclick="window.location='country.php';">Go Back</button>

