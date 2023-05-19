<?php
	//Выдача пути к файлу аватара пользователя
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	//Получение аватара пользователя
	$getava = mysqli_query($conn, "SELECT avatar_path FROM users_list WHERE token='$token'");
	$avaarr = mysqli_fetch_array($getava);
	//Получение первого элемента массива - ссылки на аватар либо пустой строки
	$ava=$avaarr[0];
	echo $ava;
?>