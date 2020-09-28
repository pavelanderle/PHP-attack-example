<?php
    
    
        
    $con = new mysqli("localhost","root","root","attackphp");

    if ($con->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

    $sql="SET CHARACTER SET UTF8";
    $con->query($sql);
    if (isset($_GET["addemail"])) {
        $email = $_GET["addemail"];
        $sql="INSERT INTO email_adress (email) VALUE ('$email')";

        if ($con->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $con->error;
        }

    }

    var_dump(!empty($_GET["findemail"]));

    if (isset($_GET["findemail"]) && !empty($_GET["findemail"])) {
        $findemail = $_GET["findemail"];
        //$sql = "SELECT id, email FROM email_adress WHERE email='".$con->real_escape_string ($findemail)."'"; // ošetřeno
        $sql = "SELECT id, email FROM email_adress WHERE email='$findemail'"; // neošetřeno
        echo $sql;
    }
    else{
        $sql = "SELECT id, email FROM email_adress";
    }
    

    $result=$con->query($sql);

    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>Id</th><th>Email</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            //echo "<td>".htmlspecialchars($row["id"])."</td><td>".htmlspecialchars($row["email"])."</td>"; // ošetřeno
            echo "<td>".$row["id"]."</td><td>".$row["email"]."</td>"; // neošetřeno
            echo "</tr>";
        }
        echo "</table>";
      } else {
        echo "0 results";
      }



    

