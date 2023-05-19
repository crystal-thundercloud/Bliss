<?php
	//Запись пройденных уроков в базу
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	$course_les = $_POST['course_lesson'];
	
	$setlesto1 = mysqli_query($conn, "UPDATE users_achievments 
	LEFT JOIN users_list ON users_list.ID = users_achievments.user_id
	SET $course_les = '1'
	WHERE users_list.token='$token'");
	
	if (!$setlesto1) echo "Во время записи оконченного урока произошла ошибка";
?>