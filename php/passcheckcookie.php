<?php
	//Проверка на странице авторизации, верный ли пароль для пользователя с данным логином
	include_once 'dbconn.php';
	$token = $_COOKIE['PHPSESSID'];
	$pass = $_POST['pass'];
	
	$bdpass = mysqli_query($conn, "SELECT `password` FROM users_list WHERE `token`='$token'");
	$bdpassarr = mysqli_fetch_assoc($bdpass);
	$bdpasshashed = $bdpassarr['password'];
	
	if (!password_verify($pass, $bdpasshashed)) {
		echo "Неверный пароль!";
	}
?>