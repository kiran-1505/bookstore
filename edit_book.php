<?php	
	// if save change happen
	if(!isset($_POST['save_change'])){
		echo "Something wrong!";
		exit;
	}

	$isbn = trim($_POST['isbn']);
	$title = trim($_POST['title']);
	$author = trim($_POST['author']);
	$descr = trim($_POST['descr']);
	$price = floatval(trim($_POST['price']));
	$semester = trim($_POST['semester']);

	if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
		$image = $_FILES['image']['name'];
		$directory_self = str_replace(basename($_SERVER['PHP_SELF']), '', $_SERVER['PHP_SELF']);
		$uploadDirectory = $_SERVER['DOCUMENT_ROOT'] . $directory_self . "bootstrap/img/";
		$uploadDirectory .= $image;
		move_uploaded_file($_FILES['image']['tmp_name'], $uploadDirectory);
	}

	require_once("./functions/database_functions.php");
	$conn = db_connect();

	// if semester is not in db, create new
	$findPub = "SELECT * FROM semester WHERE semester_name = '$semester'";
	$findResult = mysqli_query($conn, $findSem);
	if(!$findResult){
		// insert into publisher table and return id
		$insertSem = "INSERT INTO semester(semester_name) VALUES ('$semester')";
		$insertResult = mysqli_query($conn, $insertSem);
		if(!$insertResult){
			echo "Can't add new semester " . mysqli_error($conn);
			exit;
		}
	}


	$query = "UPDATE books SET  
	book_title = '$title', 
	book_author = '$author', 
	book_descr = '$descr', 
	book_price = '$price'";
	if(isset($image)){
		$query .= ", book_image='$image' WHERE course_code = '$isbn'";
	} else {
		$query .= " WHERE course_code = '$isbn'";
	}
	// two cases for fie , if file submit is on => change a lot
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't update data " . mysqli_error($conn);
		exit;
	} else {
		header("Location: admin_edit.php?bookisbn=$isbn");
	}
?>