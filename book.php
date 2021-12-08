<?php

	$db=mysqli_connect("localhost","root","","library");  
					/* server name, username, passwor, database name */

?>

<!DOCTYPE html>
<html>
<head>
	<title>Books</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <h3>List Of Books</h3>
    <?php
    $result = mysqli_query($db, "SELECT * FROM book");
    ?>
    <table class="table table-bordered">
        <tr style='background-color: #1c33d76b;'>
            <th>ID</th>
            <th>Title</th>
            <th>Authors</th>
            <th>Edition</th>
            <th>Status</th>
            <th>Quantity</th>
            <th>Department</th>
            <th>Book Type</th>
            <th>Publication</th>
        </tr>
        <?php

    while ($row = mysqli_fetch_assoc($result)) {
        ?>
        <tr>
            <td><?php echo $row['bid'] ?></td>
            <td><?php echo $row['name'] ?></td>
            <td><?php echo $row['authors'] ?></td>
            <td><?php echo $row['edition'] ?></td>
            <td><?php echo $row['status'] ?></td>
            <td><?php echo $row['quantity'] ?></td>
            <td><?php echo $row['department'] ?></td>
            <td><?php echo $row['topic'] ?></td>
            <td><?php echo $row['publication'] ?></td>
        </tr>
        <?php
    }
    ?>
    </table>

</body>
</html>

