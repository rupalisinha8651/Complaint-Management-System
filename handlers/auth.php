<!-- for handling admin login -->
<?php

try {

    if (isset($_POST['logout'])) {
        echo "hello";
        session_start();

        session_destroy();

        header("Location: http://localhost/project/pages/login.php");
        exit();
    }
    $name = $_POST["username"];
    $pass = $_POST["password"];

    // echo $name . $pass;
    session_start();

    include("dbConnectivity.php");
    $connection = dbConnectivity();
    $query = "SELECT * FROM admin WHERE username = '$name' AND password = '$pass';";

    $result = mysqli_query($connection, $query);

    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            $username= $row["username"];
            $position = $row["position"];
            $image = $row["profileURL"];
            $_SESSION['user'] = $row["username"];
            $_SESSION['logged'] = "1";
            header("Location: http://localhost/project/pages/complaints.php?user=" . $row["username"]);
            exit();
 
        }
    } else {
        header("Location: http://localhost/project/pages/login.php?status=0");
        exit();
    }

} catch (Exception $e) {
    echo "error occurred $e";
}
    
?>