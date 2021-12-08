<?php
// (A) PROCESS ORDER FORM
if (isset($_POST["name"])) {
  require "3-process.php"; 
  echo $result == "" 
    ? "<div class='notify'>Thank You! We have received your order</div>" 
    : "<div class='notify'>$result</div>" ;
}
?>
 
<!-- (B) ORDER FORM -->
<form id="orderform" method="post" target="_self">
  <label for="name">Name:</label>
  <input type="text" name="name" required value="John Doe"/> 
 
  <label for="email">Email:</label>
  <input type="email" name="email" required value="john@doe.com"/> 
 
  <label for="qty">Quantity Needed:</label>
  <input type="number" name="qty" required value="1"/> 
 
  <input type="submit" value="Place Order"/>
</form>