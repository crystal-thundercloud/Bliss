<?php
	//Проверка на странице восстановления пароля, правильная ли почта для пользователя с данным логином
	include_once 'dbconn.php';
	$log = htmlspecialchars($_POST['log']);
	$mail = htmlspecialchars($_POST['mail']);

	$logexists = mysqli_query($conn, "SELECT mail FROM users_list WHERE username='$log' AND mail='$mail'");
		
	if (mysqli_num_rows($logexists)<=0) {
		echo "Неверная почта!";
	}
?>