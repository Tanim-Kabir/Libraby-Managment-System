<div style="background-color: DarkKhaki; padding-top: 20px; padding-bottom: 30px; padding-left: 10%; padding-right: 10%;">
<?php
	$Student_id = $_GET["Student_id"];

	$Email = $_GET["Email"];
	$Book_name = $_GET["Book_name"];
	$Author_name = $_GET["Author_name"];
?>



<h1>Update Your Request Book Information</h1>



<form method=get action=rupdate_result.php>



	<input type=hidden name=Student_id value='<?php echo $Student_id; ?>'> <br>
   


	Student_id: <input type=text name=Student_id value='<?php echo $Student_id; ?>'>

	<p>

	Email: <input type=text name=Email value='<?php echo $Email; ?>'>

	<p>
	Book_name: <input type=text name=Book_name value='<?php echo $Book_name; ?>'>

	<p>
	Author_name: <input type=text name=Author_name value='<?php echo $Author_name; ?>'>

	<p>

	<input type=submit value=Update>

</form>