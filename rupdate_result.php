<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php

	$Student_id = $_GET["Student_id"];

	$Email = $_GET["Email"];
	$Book_name = $_GET["Book_name"];
	$Author_name = $_GET["Author_name"];

	require_once('rdb_connect.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	$query 	= "UPDATE book SET Student_id='$Student_id', Email='$Email' , Book_name='$Book_name' , Author_name='$Author_name'   WHERE Student_id = $Student_id";

	//echo $query;



	mysqli_query( $connect, $query )

		or die("Can not execute query");



	echo "<p>Record updated. Thank you for your information.";
	//<br> f0 = $f0 <br> f1 = $f1";



	echo "<p><a href=rread.php>READ all requests</a>";

?>