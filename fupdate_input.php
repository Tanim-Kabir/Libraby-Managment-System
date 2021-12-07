<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php
	$Student_id = $_GET["Student_id"];

	$Email = $_GET["Email"];
	$Phone = $_GET["Phone"];
	$Opinion = $_GET["Opinion"];
?>



<h1>Update Your Feedback</h1>



<form method=get action=fupdate_result.php>



	<input type=hidden name=Student_id value='<?php echo $Student_id; ?>'> <br>
   


	Student_id: <input type=text name=Student_id value='<?php echo $Student_id; ?>'>

	<p>

	Email: <input type=text name=Email value='<?php echo $Email; ?>'>

	<p>
	Phone: <input type=text name=Phone value='<?php echo $Phone; ?>'>

	<p>
	Opinion: <input type=text name=Opinion value='<?php echo $Opinion; ?>'>

	<p>

	<input type=submit value=Update>

</form>