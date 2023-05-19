<?php
	//Изменение администраторов на странице управления
	include_once 'dbconn.php'; //подключились к базе
	
	$chckbxsarr = $_POST['myarr']; //Получение массива со страницы - отмеченных чекбоксов, вид ID => "on"
	
	//Значения полей - не 1, а "on", что не совпадает с типом boolean в таблице
	//Чтобы это исправить, значения заменяются в цикле
	foreach ($chckbxsarr as $key => $val) {
		if ($val == 'on') $chckbxsarr[$key] = 1;
		//Главный администратор - пользователь с ID = 1
		//Чтобы его не лишили прав администратора, значение его поля всегда будет меняться на 1
		if ($chckbxsarr[1]==0) $chckbxsarr[1]=1;
	}
	
	//Запрос на замену значений is_admin в таблице пользователей
	
	foreach ($chckbxsarr as $key => $val) {
		$manageadmins = mysqli_query($conn, "UPDATE users_list SET is_admin=$val WHERE ID=$key");
	}
	
	if (!$manageadmins) {
		echo "Не удалось изменить администраторов";
	}
		
	else {
		echo "Администраторы успешно изменены";
	}
?>