<?php
	//Изменение пароля
	include_once 'dbconn.php';
	$token = $_COOKIE['PHPSESSID'];
	$oldpass = htmlspecialchars($_POST['pass']);
	$newpass = htmlspecialchars($_POST['pass2']);
	$newpass = password_hash($newpass, PASSWORD_DEFAULT);
	
	$passchange = mysqli_query($conn, "UPDATE users_list SET password='$newpass' WHERE token='$token'");
	
	if (!$passchange) {
		echo "Ошибка!";
	}
	
	else {
		echo "Пароль успешно изменён.";
	}
?>