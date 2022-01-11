<?php

	$u1 = $_POST["u1"];
	$author = $_POST["author"];
	$u2 = $_POST["u2"];
	$u3= $_POST["u3"];

	error_reporting(0);
	$link = mysqli_connect("localhost", "root", "", "library");
	$status = 'OK';
	$content = [];
	if (mysqli_connect_errno()) {
		$status = 'ERROR';
		$content = mysqli_connect_error();
	}
	$query = "INSERT INTO books_request (name, authors, edition, isbn) VALUES ( '$u1', '$author', '$u2', '$u3')";
	mysqli_query($link, $query);
	header("Location: request_books_page.html");
?>

