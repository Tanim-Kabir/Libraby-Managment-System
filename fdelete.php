<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php

	$Student_id = $_GET["Student_id"];



	require_once('fdb_connect.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "DELETE FROM feedback WHERE Student_id=$Student_id" )

		or die("Can not execute query");



	echo "Record deleted<br>";



	echo "<p><a href=fread.php>READ all feedbacks</a>";

?>