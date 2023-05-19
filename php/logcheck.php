<?php
	//Проверка на странице авторизации, существует ли пользователь с данным логином
	include_once 'dbconn.php';
	$log = htmlspecialchars($_POST['log']);

	$logexists = mysqli_query($conn, "SELECT * FROM users_list WHERE username='$log'");
		
	if (mysqli_num_rows($logexists)<=0) {
		echo "Пользователь не найден!";
	}
?>