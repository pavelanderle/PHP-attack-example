<?php
    
    if (isset($_GET["email"])) {
        $email = $_GET["email"];
    $con = new mysqli("localhost","root","","attackphp");

    if ($con->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

    $sql="SET CHARACTER SET UTF8";
    $con->query($sql);

    $sql="INSERT INTO email_adress (email) VALUE ('$email')";

    if ($con->query($sql) === TRUE) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $sql . "<br>" . $con->error;
      }

    $con->query($sql);

    $con->close();
    }
    

