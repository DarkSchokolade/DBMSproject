<!DOCTYPE html>
<html>
<head>
	<title>Cell-O-Pedia</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<nav class="navbar navbar-inverse" style="background-color: #e67c0b">
  		<span class="navbar-brand mb-0 h1">Cell-O-Pedia</span>
	
	<form method="post">
  		<!-- <label>SEARCH</label> -->
		<input type="text" name="search" placeholder="Search">
		<input class="btn btn-primary" type="submit" name="submit" value ="GO!" >
	</form>
	</nav>

	<?php 

		session_start();

		require("DbConnect.php");
		$db = new DbConnect;
		$conn = $db->connect();

		if (isset($_POST["submit"])) {
			$str=$_POST["search"];

			$_SESSION['BreedName'] = $str;
		}

		$sql = "SELECT 
					a.Name ,
					b.A_scientificname,
					b.A_Kingdom,
					b.A_Phylum,
					b.A_Class,
					b.A_Genus
				 FROM `allorganisms` as a
				 INNER JOIN Animals AS b ON(a.ID = b.A_id)
				 WHERE Name='$str'";
		$stmt = $conn->prepare($sql);
		$stmt->execute();
		$allorganisms = $stmt->fetchAll(PDO::FETCH_ASSOC);
		//print_r($allorganisms);
		

	 ?>

	<div class="container">
		<div class="row">
			<div class="col-md-12 col-md-offset-2">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">NAME</th>
							<th scope="col">SCIENTIFIC NAME</th>
							<th scope="col">KINGDOME</th>
							<th scope="col">PHYLUM/DIVISION</th>
							<th scope="col">CLASS</th>
							<th scope="col">GENUS</th>
						</tr>
					</thead>
					<tbody>
						<?php 
							foreach ($allorganisms as $organisms) {
								echo "<tr>
									<td>".$organisms['Name']."</td>
									<td>".$organisms['A_scientificname']."</td>
									<td>".$organisms['A_Kingdom']."</td>
									<td>".$organisms['A_Phylum']."</td>
									<td>".$organisms['A_Class']."</td>
									<td>".$organisms['A_Genus']."</td>
								</tr>";
							}
						 ?>
					</tbody>
				</table>
				
				<br><br>

				<?php 

				$filename = "Description/$str.txt";
				$file = fopen($filename, "r");

				if ($file == false) {
					echo "error in opening file";
					exit();
				}
				$size = filesize($filename);
				$text = fread($file, $size);

				?>
				<div class="row">
					<div class="col-md-12">
						<div class="jumbotron">

							<img src="Images/<?php echo $str ?>.jpeg"> <!-- for image display within jumbotron -->

							<h1 class="display-4"> DESCRIPTION</h1>
							<hr class="my-4">
							<?
							echo "<pre>$text</pre>"
							?>
						</div>
					</div>
				</div>
				 

				 <a href="breeds.php" target="_blank">BREEDS</a>
			</div>
		</div>
	</div>

</body>
</html>