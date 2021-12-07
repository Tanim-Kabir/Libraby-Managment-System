<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php

	$Student_id = $_GET["Student_id"];

	$Email = $_GET["Email"];
	$Phone = $_GET["Phone"];
	$Opinion = $_GET["Opinion"];

	require_once('fdb_connect.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	$query 	= "UPDATE feedback SET Student_id='$Student_id', Email='$Email' , Phone='$Phone' , Opinion='$Opinion'   WHERE Student_id = $Student_id";

	//echo $query;



	mysqli_query( $connect, $query )

		or die("Can not execute query");



	echo "<p>Record updated. Thank you for your Feedback.";
	//<br> f0 = $f0 <br> f1 = $f1";



	echo "<p><a href=read.php>READ all Feedbacks</a>";

?>