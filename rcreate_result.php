<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php

	$Student_id = $_GET["Student_id"];

	$Email = $_GET["Email"];
	$Book_name = $_GET["Book_name"];
	$Author_name = $_GET["Author_name"];


	require_once('rdb_connect.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "INSERT INTO book VALUES ( '$Student_id', '$Email', '$Book_name', 'Author_name')" )

		or die("Can not execute query");



	//echo "Record inserted:<br> f0 = $f0 <br> f1 = $f1";


    echo "Thank you for your request.";
	echo "<p><a href=rread.php>READ all request</a>";

?>