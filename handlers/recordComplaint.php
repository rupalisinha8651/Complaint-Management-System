<?php
    include('dbConnectivity.php');
    echo "welcome";
    function generateUniqueKey($size = 5) {
        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $key = '';
        $maxIndex = strlen($characters) - 1;
    
        for ($i = 0; $i < $size; $i++) {
            $key .= $characters[rand(0, $maxIndex)];
        }
    
        return $key;
    }
        
    try {
    if ($_POST) {
        $category = $_POST['cat'];
        $name = $_POST['name'];
        $contact = $_POST['contact'];
        $email = $_POST['email'];
        $title = $_POST['title'];
        $description = $_POST['complaint'];
        $uniqueKey = generateUniqueKey();

        echo "compaint is " . $category . "";


        $connection = dbConnectivity();
        $query = "INSERT INTO complaints (name, contact, email, title, description, uniqueId, status, category)
        VALUES ('$name', '$contact', '$email', '$title', '$description', '$uniqueKey', 2, '$category');";

        if (mysqli_query($connection, $query)) {


            echo "Complaint added successfully!";
            header("Location: http://localhost/project/pages/logComplaint.php?success=1&id=$uniqueKey");
        } else {
            echo "Error: " . $query . "<br>" . mysqli_error($connection);
            header("Location: http://localhost/project/pages/logComplaint.php?success=2");
        }
    }

} catch (Exception $e) {
    header("Location: http://localhost/project/pages/logComplaint.php?success=2");
        
}

?>