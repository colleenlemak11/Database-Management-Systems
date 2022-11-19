<!-- 
    Colleen Lemak
    DBMS F22
    Project 4
    25 October 2022

    To run: php country.php
    Use localhost port for dynamic webpage
    References insert.php, display.php, update.php, and remove.php
    Assumes a config.ini file for connection info
-->

<!-- Ensure functionality of landing page using MySQL database -->

<!DOCTYPE html>
<html>
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
    <h1 style="font-size:0.8vw">-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</h1><br>
    <h1 style="font-size:1.0vw"><b>Add country:</b></h1>


    <!-- Insertion layout -->
    <form action="insert.php" method="POST">
        <table>
            <tbody>
                <tr><td><label for="code">Country Code:</label></td><td><input name="code" type="text"></td></tr>
                <tr><td><label for="name">Country Name:</label></td><td><input name="name" type = "text"></td></tr>
                <tr><td><label for="gdp">Country GDP:</label></td><td><input name="gdp" type="text"></td></tr>
                <tr><td><label for="inflation">Country Inflation:</label></td><td><input name="inflation" type="text"></td></tr>
            </tbody>
        </table>
        <input type="submit" value="Add" name="addButton" required><br><br><br>
    </form>


    <!-- Display layout -->
    <?php
        $q = "SELECT country_name FROM Country";
        $country_list = mysqli_query($cn, $q);
    ?>
    
    <h1 style="font-size:1.0vw"><b>Display country information:</b></h1>

    <form action="display.php" method="POST">
        <select name="Display">
            <?php
                while($category = mysqli_fetch_array($country_list, MYSQLI_ASSOC)):;
            ?>
                <option name="country_name" value="<?php echo $category["country_name"];
                ?>">
                    <?php echo $category["country_name"];
                ?>
                </option>
            <?php
                endwhile;
            ?>
        </select>
        <input type="submit" value="Display" name="displayButton" required><br><br><br>
    </form>


    <!-- Update layout -->
    <?php
        $q = "SELECT * FROM Country";
        $country_list = mysqli_query($cn, $q);
    ?>

    <h1 style="font-size:1.0vw"><b>Update country information:</b></h1>
    
    <form action="update.php" method="POST">
        <?php echo str_repeat('&nbsp;', 1); echo 'Country:  '; echo str_repeat('&nbsp;', 14.5); ?>
        <select name="Update">
            <?php
                while($category = mysqli_fetch_array($country_list, MYSQLI_ASSOC)):;
            ?>
                <option value="<?php echo $category["country_name"];
                ?>">
                    <?php echo $category["country_name"];
                ?>
                </option>
            <?php
                endwhile;
            ?>
        </select><br>
        <table>
            <tbody>
                <tr><td><label for="gdp">Country GDP:</label></td><td><input name="gdp" type="text"></td></tr>
                <tr><td><label for="inflation">Country Inflation:</label></td><td><input name="inflation" type="text"></td></tr>
            </tbody>
        </table>
        <input type="submit" value="Update" name="updateButton" required><br><br>
    </form>


    <!-- Removal layout -->
    <?php
        $q = "SELECT * FROM Country";
        $country_list = mysqli_query($cn, $q);
    ?>
    <h1 style="font-size:1.0vw"><b>Remove Country:</b></h1>
    <form action="remove.php" method="POST">
        <select name="Remove">
            <?php
                while($category = mysqli_fetch_array($country_list, MYSQLI_ASSOC)):;
            ?>
                <option value="<?php echo $category["country_name"];
                ?>">
                    <?php echo $category["country_name"];
                ?>
                </option>
            <?php
                endwhile;
            ?>
        </select>
        <input type="submit" value="Remove" name="removeButton" required><br><br><br>
    </form>

    <?php
        mysqli_close($cn);
    ?>

</body>
</html>