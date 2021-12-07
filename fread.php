<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php
	require_once('fdb_connect.php');
	$connect = mysqli_connect( HOST, USER, PASS, DB )
		or die("Can not connect");


	$results = mysqli_query( $connect, "SELECT * FROM feedback" )
		or die("Can not execute query");
		
	echo "<h3> Feedback/Review </h3>";

	echo "<table border> \n";
	echo "<th>Student_id</th> <th>Email</th> <th>Phone</th> <th>Opinion</th>  <th> Delete</th>  <th>Update</th> \n";

	while( $rows = mysqli_fetch_array( $results ) ) {
		extract( $rows );
		echo "<tr>";
		echo "<td> $Student_id </td>";
		echo "<td> $Email </td>";
		echo "<td> $Phone </td>";
		echo "<td> $Opinion</td>";
		
		echo "<td> <a href = 'fdelete.php?Student_id=$Student_id'> Delete </a> </td>";
		echo "<td> <a href = 'fupdate_input.php?Student_id=$Student_id&Email=$Email&Phone=$Phone&Opinion=$Opinion'> Update </a> </td>";
		echo "</tr> \n";
	}

	echo "</table> \n";

	echo "<p><a href=fcreate_input.php>CREATE a new Feedback</a>";
?>