<?php
	session_start();
	require_once "./functions/database_functions.php";
	$conn = db_connect();

	$query = "SELECT * FROM semester ORDER BY semesterid";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't retrieve data " . mysqli_error($conn);
		exit;
	}
	if(mysqli_num_rows($result) == 0){
		echo "Empty Semester ! Something wrong! check again";
		exit;
	}

	$title = "Semesters";
	require "./template/header.php";
?>
	<p class="lead">Semesters</p>
	<ul>
	<?php 
		while($row = mysqli_fetch_assoc($result)){
			$count = 0; 
			$query = "SELECT semesterid FROM books";
			$result2 = mysqli_query($conn, $query);
			if(!$result2){
				echo "Can't retrieve data " . mysqli_error($conn);
				exit;
			}
			while ($semInBook = mysqli_fetch_assoc($result2)){
				if($semInBook['semesterid'] == $row['semesterid']){
					$count++;
				}
			}
	?>
		<li>
			<span class="badge"><?php echo $count; ?></span>
		    <a href="bookPerPub.php?semid=<?php echo $row['semesterid']; ?>"><?php echo $row['semester_name']; ?></a>
		</li>
	<?php } ?>
		<li>
			<a href="books.php">List full of books</a>
		</li>
	</ul>
