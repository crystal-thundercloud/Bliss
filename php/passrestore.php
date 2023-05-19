<?php
	//Проверка верности пароля перед входом
	include_once 'dbconn.php';
	$log = htmlspecialchars($_POST['log']);
	$pass = htmlspecialchars($_POST['pass2']);
	
	$pass = password_hash($pass, PASSWORD_DEFAULT);
	
	$newpass = mysqli_query($conn, "UPDATE users_list SET `password`='$pass' WHERE `username`='$log'");
	
	if ($newpass) {
		echo "Пароль успешно изменён.";
	}
?>