<?php
	//Изменение пароля
	include_once 'dbconn.php';
	$token = $_COOKIE['PHPSESSID'];
	$mail = $_POST['usermail'];
	
	$mailchange = mysqli_query($conn, "UPDATE users_list SET mail='$mail' WHERE token='$token'");
	
	if (!$mailchange) {
		echo "Ошибка!";
	}
	
	else {
		echo "Почта успешно изменена.";
	}
?>