<?php
    
    if ($_GET["complaintID"]) {

        $id = $_GET["complaintID"];

        include("../handlers/dbConnectivity.php");

        $connection = dbConnectivity();

        $query = "SELECT * FROM complaints WHERE uniqueId = '$id'; ";
        $results = mysqli_query($connection, $query);

        if (mysqli_num_rows($results) > 0) {
            while ($row = mysqli_fetch_assoc($results)) {
                $title = $row['title'];
                $id = $row['uniqueId'];
                $contact = $row['contact'];
                $email = $row['email'];
                $description = $row['description'];
                $status = $row['status'];
                $name = $row['name'];
                $remark = $row['remarks'];
                $category = $row['category'];
                $status_statement = "Not Solved";

                if ($status == '1') {
                    $status_statement = "Solved";
                }

            }
        } else {

            header("Location: http://localhost/project/pages/searchComplaint.php?success=2");

            exit();
        }
  
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="../assets/favicon.ico">

    <link rel="stylesheet" href="../style/complaints.css">
    <title><?php echo 'Complaint '.$id?></title>
</head>


<body>

<div class="container">
	<div class="blob-container">
    <div class="blob"></div>
    <div class="blob one"></div>
    <div class="blob two"></div>
    <div class="blob three"></div>
    <div class="blob four"></div>
    <div class="blob five"></div>
    <div class="blob six"></div>
    <div class="blob seven"></div>
    <div class="blob eight"></div>
    <div class="blob nine"></div>
    <div class="blob ten"></div>
  </div>

  <section>
      <div class="card">
        <div class="card-child">

          <h1 class='user-title'>Complaint Status<span class='xdgfds'><br>
        </span></h1>
        <br>
        <img class= "image-container" src="../assets/avatar_2.svg" alt="user avatar" />
        <br>
        <?php
          echo "<h6 class='position'>Name: $name</h6><br>";
          echo "<h6 class='position'>Email: $email</h6><br>";
          echo "<h6 class='position'>Contact Number: $contact</h6><br>";
        ?>
        </div>
          <div class="complaint-section">
  <table>
  <thead>
    <tr>
      <th>Unique ID</th>
      <th>Title</th>
      <th>Category</th>
      <th>Description</th>
      <th>Status</th>

      <th>Remarks</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php

      

      echo"  <tr>
      <td data-column=> $id </td>
      <td>$title</td>
      <td>$category</td>
      <td>$description</td>
      <td>$status_statement</td>
      <td>$remark</td>
      <form action='../handlers/deleteComplaint.php' method='POST'>
      <td>
      <input style='display: none' id='uniqueId'  name='uniqueId'  value='$id'>
      <button type='submit' value='submit' class='solveBtn'>Delete</button>
      </td>

      </form>


    </tr>
    ";

    ?>

  </tbody>
</table>    
        </div>

    </div>

    <form action="../handlers/goHome.php" method="POST">
       <button class="homeBtn" href="http://localhost/project/pages/landing.php">Home</button>
    </form>
  </section>
</div>

</body>


</html>