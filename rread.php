<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php
	require_once('rdb_connect.php');
	$connect = mysqli_connect( HOST, USER, PASS, DB )
		or die("Can not connect");


	$results = mysqli_query( $connect, "SELECT * FROM book" )
		or die("Can not execute query");
		
	echo "<h3> Book Request Information </h3>";

	echo "<table border> \n";
	echo "<th>Student_id</th> <th>Email</th> <th>Book_name</th> <th>Author_name</th>  <th> Delete</th>  <th>Update</th> \n";

	while( $rows = mysqli_fetch_array( $results ) ) {
		extract( $rows );
		echo "<tr>";
		echo "<td> $Student_id </td>";
		echo "<td> $Email </td>";
		echo "<td> $Book_name </td>";
		echo "<td> $Author_name </td>";
		
		echo "<td> <a href = 'rdelete.php?Student_id=$Student_id'> Delete </a> </td>";
		echo "<td> <a href = 'rupdate_input.php?Student_id=$Student_id&Email=$Email&Book_name=$Book_name&Author_name=$Author_name'> Update </a> </td>";
		echo "</tr> \n";
	}

	echo "</table> \n";

	echo "<p><a href=rcreate_input.php>CREATE a new book request</a>";
	echo "<p><a href=index.html>Main Menu</a>";
?>