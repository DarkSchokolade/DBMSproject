<!DOCTYPE html>
<html>
<head>
	<title>BREEDS!</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<style>
body {
  background-image: url('bree.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
	<?php 
session_start();

		require("DbConnect.php");
		$db = new DbConnect;
		$conn = $db->connect();

$b_name=$_SESSION['BreedName'];
echo "$b_name";

$sql = "SELECT
				*
				FROM `allorganisms` as a
				INNER JOIN Breed AS b ON(a.ID = b.ID)
				WHERE Name = '$b_name' ";

$stmt = $conn->prepare($sql);
$stmt->execute();
$allorganisms = $stmt->fetchAll(PDO::FETCH_ASSOC);

#print_r($allorganisms);
 ?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-dark">
				<thead>
					<tr>
						<th>BREED</th>
						<th>ORIGIN</th>
					</tr>
				</thead>
				<tbody>
					<?php 
						foreach ($allorganisms as $breeds) {
							echo "<tr>
								<td>".$breeds['BreedName']."</td>
								<td>".$breeds['Origin']."</td>
							</tr>";
						}
					 ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>