<?php 

// establishing connection
define("server", "localhost");
define("user", "root");
define("pass", "");
define("db_name", "cms");

function dbConnectivity() {
    try {
        $connection = mysqli_connect(server, user, pass, db_name);
        if (!$connection) {
            echo 'not connected';
            print( "failed to connect " . mysqli_connect_error());
            throw new Exception("Database connectivity failed !");
            echo '<script>alert("Welcome to Geeks for Geeks")</script>'; 
            exit();

        } 


        return $connection;

    } catch (Exception $e) {

        return false;
    }
}

dbConnectivity();