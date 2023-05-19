<?php
	//Регистрация пользователей
	include_once 'dbconn.php';
	
	//Передача данных из формы в переменные: логин, пароль, почта
	$log = htmlspecialchars($_POST['log']);
	$pass = htmlspecialchars($_POST['pass1']);
	$pass = password_hash($pass, PASSWORD_DEFAULT);
	$mail = $_POST['mail'];
		
	//Если таблицы для пользователей нет, то создать её с именем users_list и перечисленными полями	
	$tablecreation = mysqli_query($conn, "CREATE TABLE IF NOT EXISTS users_list (
    ID INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
    password VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
    mail VARCHAR(40) COLLATE utf8mb4_bin NOT NULL,
    registration_date DATETIME NULL,
    last_logged_in DATETIME NULL,
	token VARCHAR(255) NULL,
    avatar_path VARCHAR(30) NULL,
	is_admin BOOLEAN NULL) COLLATE utf8mb4_unicode_ci");
		
	//Выбор часового пояса для верной передачи даты регистрации/входа
	date_default_timezone_set('Europe/Moscow');
	
	//Если логин уже записан в базу данных, вывести сообщение об ошибке, иначе записать данные пользователя в базу
	$logexists = mysqli_query($conn, "SELECT * FROM users_list WHERE username='$log'");
	
	if(mysqli_num_rows($logexists)<=0) {
		
		$logadded = mysqli_query($conn, "INSERT INTO users_list(username, password, mail, registration_date, last_logged_in, is_admin) VALUES ('$log', '$pass', '$mail', NOW(), NULL, 0)");
		
		if (!$logadded) {
			echo "Ошибка регистрации пользователя!";
		}
		else {
			echo "Регистрация прошла успешно.";
			exit;
		}
	}
		
	else {
		echo "Пользователь с таким логином уже существует в базе данных.";
		exit;
	}
?>