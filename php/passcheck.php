<?php
	//Проверка верности пароля перед входом
	include_once 'dbconn.php';
	$log = htmlspecialchars($_POST['log']);
	$pass = htmlspecialchars($_POST['pass']);
	
	$bdpass = mysqli_query($conn, "SELECT `password` FROM users_list WHERE `username`='$log'");
	$bdpassarr = mysqli_fetch_assoc($bdpass);
	$bdpasshashed = $bdpassarr['password'];
	
	if (!password_verify($pass, $bdpasshashed)) {
		echo "Неверный пароль!";
	}
?>