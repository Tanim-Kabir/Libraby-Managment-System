
<?php

	$db=mysqli_connect("localhost","root","","library");  
					/* server name, username, passwor, database name */

?>

<!DOCTYPE html>
<html>
<head>
	<title>Student</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <h3>List Of Student</h3>
    <?php
    $result = mysqli_query($db,"SELECT * FROM `student`;");
    ?>
    <table>
        <tr style='background-color: #1c33d76b;'>
            <th>First Name</th>
            <th>Last Name</th>
            <th>ID</th>
            <th>Email</th>
            <th>Contact</th>
        </tr>
    </table>

</body>
</html>

