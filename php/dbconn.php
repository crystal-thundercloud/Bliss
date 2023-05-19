<?php
	//Открытие соединения с базой данных: хост, имя базы, логин и пароль пользователя базы
	$host = 'localhost';
	$db = 'blissdatabase';
	$dbuser = 'root';
	$dbpass = 'root';
	
	//Соединение с базой
	$conn = mysqli_connect($host, $dbuser, $dbpass, $db);
	
	//При наличии ошибки подключения вывести информацию об ошибке
	if(!$conn) {
		echo "Соединение не установлено! ".PHP_EOL;
		echo "Код ошибки: ", mysqli_connect_errno().PHP_EOL;
		echo "Текст ошибки: ", mysqli_connect_error().PHP_EOL;
		exit;
	}
		
	//Если ошибок нет, то выдать информацию о соединении
	/*echo "Соединение установлено! ".PHP_EOL;
	echo "Информация о сервере: ".mysqli_get_host_info($conn).PHP_EOL;*/
		
?>