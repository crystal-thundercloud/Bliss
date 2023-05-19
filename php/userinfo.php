<?php
	//Выдача даты регистрации пользователя
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	//Получение даты регистрации пользователя в виде таблицы
	$getdate = mysqli_query($conn, "SELECT registration_date FROM users_list WHERE token='$token'");
	//Перевод таблицы в массив для возможности отображения на странице
	$datearr = mysqli_fetch_array($getdate);
	//Получение первого элемента массива - даты регистрации
	$regdate=$datearr[0];
	$regdate = substr($regdate, 0, 10);
	echo "Дата регистрации: $regdate<br><br>";
	
	//Выдача почты пользователя
	
	//Получение почты пользователя в виде таблицы
	$getmail = mysqli_query($conn, "SELECT mail FROM users_list WHERE token='$token'");
	//Перевод таблицы в массив для возможности отображения на странице
	$mailarr = mysqli_fetch_array($getmail);
	//Получение первого элемента массива - почты
	$usermail=$mailarr[0];
	echo "<center><form id='mailfrm'>
	<label>Почта:
	<input type='mail' id='usermail' name='usermail' value='$usermail' pattern='[a-zA-Z\d][a-zA-Z\d._-]{1,}@[a-z\d]{2,}\.[a-z]{2,}' maxlength='40' disabled></label>
	<span id='s00'></span>
	<input type='button' id='changemail' value='Изменить почту'></form></center>";
?>