<!DOCTYPE html>
<html>
<head>
	<title>FeedBack On Site</title>
</head>
<body>
	<style>
body {
  background-image: url('feed.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>

	<form action="feedback.php" method="POST">
		<table>
			<tr><td>Name: </td><td><input type="text" name="name"></td></tr>
			<tr><td colspan="2">Comment: </td></tr>
			<tr><td colspan="2"><textarea name="comment"></textarea></td></tr>
			<tr><td colspan="2"><input type="submit" name="submit" value="POST IT!!"></td></tr>
		</table>
	</form>

	<?php
	$name = $_POST['name'];
	$comment = $_POST['comment'];
	$submit = $_POST['submit'];

	require("DbConnect.php");
	$db = new DbConnect;
	$conn = $db->connect();

	if ($submit) {
		if ($name&&$comment) {
			$sql = "INSERT INTO `feedback` (f_name,comment) VALUES ('$name','$comment')";

		}
		else{
			echo "please fill the fields";
		}
	}
	

	$stmt = $conn->prepare($sql);
	$stmt->execute();
	#$allorganisms = $stmt->fetchAll(PDO::FETCH_ASSOC); 


	 ?>

</body>
</html>