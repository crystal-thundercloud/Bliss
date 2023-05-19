<?php
	//Выдача логина пользователя
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	//Получение логина пользователя в виде таблицы
	$getlog = mysqli_query($conn, "SELECT username FROM users_list WHERE token='$token'");
	//Перевод таблицы в массив для возможности отображения на странице
	$logarr = mysqli_fetch_array($getlog);
	//Получение первого элемента массива - логина
	$log=$logarr[0];
	echo "$log";
	
?>