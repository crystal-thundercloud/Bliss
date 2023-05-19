<?php
	//Проверка, не залогинен ли уже пользователь
	include_once 'dbconn.php';
	
	//Если есть кука phpsessid и она верна - залогинен
	if(isset($_COOKIE['PHPSESSID'])) {
		$token = $_COOKIE['PHPSESSID'];
	
		$sesscorrect = mysqli_query($conn, "SELECT token FROM users_list WHERE token='$token'");
		
		//Если неверна - не залогинен
		if (mysqli_num_rows($sesscorrect)<=0) {
			echo "no";
		}
		
		else echo "ok";
	}
	
	//Если куки нет - не залогинен
	else echo "no";
?>