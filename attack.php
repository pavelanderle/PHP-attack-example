<?php
    
    
        
    $con = new mysqli("localhost","root","","attackphp");

    if ($con->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

    $sql="SET CHARACTER SET UTF8";
    $con->query($sql);
    if (isset($_GET["email"])) {
        $email = $_GET["email"];
        $sql="INSERT INTO email_adress (email) VALUE ('$email')";

        if ($con->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $con->error;
        }

    }

    $sql = "SELECT * FROM email_adress";

    $result=$con->query($sql);

    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>Id</th><th>Email</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>".$row["id"]."</td><td>".$row["email"]."</td>";
            echo "</tr>";
        }
        echo "</table>";
      } else {
        echo "0 results";
      }



    

