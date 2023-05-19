<?php
	//Сохранение аватара, выбранного из списка
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	//Получение пути к выбранному из списка аватару
	$avapath = $_POST['avafromlist'];
	
	//Получение ID пользователя для создания папки
	$getid = mysqli_query($conn, "SELECT ID FROM users_list WHERE token='$token'");
	//Превращение полученной строки из предыдущего запроса в массив
	$idarr = mysqli_fetch_array($getid);
	//Получение первого элемента массива - числа ID
	$id=$idarr[0];
	
	//Обозначение директории для аватаров пользователей (для каждого пользователя своя)
	$dir = '../users/'.$id.'/';
	
	//Проверка, не создана ли уже папка
	$direxists = is_dir($dir);
	//Если нет - создать
	if(!$direxists) {
		$dircreate = mkdir($dir, 0777, true);
			
		if (!$dircreate) {
		echo "Не удалось создать директорию";
		}
	}
	//Получение расширения загруженного файла
	$avatype = strrchr($avapath, '.');
	
	//Запись полного пути к файлу со всеми папками, именем файла и расширением
	$avaname = $dir.'ava'.$avatype;
	//Перенос файла в директорию, переименование в ava.расширение_файла
	$movefile = copy($avapath, $avaname);
	if (!$movefile) {
		echo "Ошибка загрузки файла";
	}
	
	//Сохранение пути к файлу в БД
	$avaloaddb = mysqli_query($conn, "UPDATE users_list SET avatar_path='$avaname' WHERE ID='$id'");
	if (!$avaloaddb) {
		echo "Ошибка добавления записи в базу данных";
	}
	else {
		echo "Аватар успешно загружен";
	}
?>