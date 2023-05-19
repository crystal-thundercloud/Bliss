<?php
	//Отправка сообщения на странице контактов
	include_once 'dbconn.php';
	
	//Передача данных из формы в переменные: имя, сообщение
	//Данные кодируются, чтобы не пропустить возможные SQL-инъекции
	//При выводе сообщения будут декодированы, но кавычки останутся скрытыми
	$imya = htmlspecialchars($_POST['imya'], ENT_QUOTES);
	$message = nl2br(htmlspecialchars($_POST['message'], ENT_QUOTES));
		
	//Если таблицы для сообщений нет, то создать её с именем messages и перечисленными полями	
	$tablecreation = mysqli_query($conn, "CREATE TABLE IF NOT EXISTS messages (
	№ INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
    message VARCHAR(5000) COLLATE utf8mb4_bin NOT NULL) COLLATE utf8mb4_unicode_ci");
	
	$messageadded = mysqli_query($conn, "INSERT INTO messages(name, message) VALUES ('$imya', '$message')");
		
	if (!$messageadded) {
		echo "Ошибка отправки сообщения!";
	}
	else {
		echo "Сообщение успешно отправлено.";
		exit;
	}
?>