<?php
	//Удаление сообщений на странице управления
	include_once 'dbconn.php'; //подключились к базе
	
	$msgchckbxsarr = $_POST['msgarr']; //Получение массива со страницы - отмеченных чекбоксов, вид ID => "on"
	
	//Запрос на удаление сообщений из таблицы
	
	foreach ($msgchckbxsarr as $key => $val) {
		$delmsgs = mysqli_query($conn, "DELETE from messages WHERE №=$key");
	}
	
	if (!$delmsgs) {
		echo "Не удалось удалить сообщения";
	}
	
	else {
		echo "Сообщения удалены";
	}
?>