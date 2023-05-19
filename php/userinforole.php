<?php
	//Выдача роли пользователя
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	//Получение роли пользователя в виде таблицы
	$getrole = mysqli_query($conn, "SELECT is_admin FROM users_list WHERE token='$token'");
	//Перевод таблицы в массив для возможности отображения на странице
	$rolearr = mysqli_fetch_array($getrole);
	//Получение первого элемента массива - роли
	$role=$rolearr[0];
	echo $role;
?>