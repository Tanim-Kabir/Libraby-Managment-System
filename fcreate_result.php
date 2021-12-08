<div style="background-color: Teal; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;"><?php

	$Student_id = $_GET["Student_id"];

	$Email = $_GET["Email"];
	$Phone = $_GET["Phone"];
	$Opinion = $_GET["Opinion"];


	require_once('fdb_connect.php');

	$connect = mysqli_connect( HOST, USER, PASS, DB )

		or die("Can not connect");



	mysqli_query( $connect, "INSERT INTO feedback VALUES ( '$Student_id', '$Email', '$Phone', '$Opinion')" );

		//or die("Can not execute query");



	//echo "Record inserted:<br> f0 = $f0 <br> f1 = $f1";


    echo "Thank you for your feedback.";
	echo "<p><a href=fread.php>READ all feedbacks</a>";

?>