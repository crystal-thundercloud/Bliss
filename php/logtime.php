<?php
	//Скрипт для входа: старт сесии, обновление даты входа в аккаунт, запись токена
	include_once 'dbconn.php';
	
	$log = htmlspecialchars($_POST['log']);
	$pass = htmlspecialchars($_POST['pass']);
	
	session_start();
	
	$sessid = session_id();
	$logupdate = mysqli_query($conn, "UPDATE users_list SET last_logged_in=NOW(), token='$sessid' WHERE username='$log'");
	
	if (!$logupdate) {
		echo "Ошибка!";
	}
?>