<?php
	include_once 'dbconn.php';
	//Выход из аккаунта - удаление cookie и токена из базы, закрытие сессии
	$token = $_COOKIE['PHPSESSID'];
	$deltoken = mysqli_query($conn, "UPDATE users_list SET token=NULL WHERE token='$token'");
	
	setcookie('PHPSESSID', $token, 1, '/');
	session_destroy();
?>