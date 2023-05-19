<?php
	//Выдача достижений пользователя
	include_once 'dbconn.php';
	
	//Получение логина из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	//Получение достижений пользователя из базы
	$getach = mysqli_query($conn, "SELECT users_achievments.* FROM users_achievments
	RIGHT JOIN users_list ON users_list.ID =users_achievments.user_id
	WHERE token='$token'");
	//Перевод результата в массив
	$acharr = mysqli_fetch_assoc($getach);
	
	//Вывод только полученных достижений (со значением 1)
	foreach ($acharr as $key => $val) {
		if ($val == '1' and $key!='id' and $key!='user_id') {
			echo $key,' ';
		}
	}
?>