<?php
	//Загрузка аватара из файла, добавленного пользователем
	include_once 'dbconn.php';
	
	//Получение токена из сохранённых куки
	$token = $_COOKIE['PHPSESSID'];
	
	if (!($_FILES['fileava']['tmp_name']['0'])) {
		echo "Файл не выбран";
	}
	
	else if ($_FILES['fileava']['size']['0']>(3*1024*1024)) {
		echo "Файл больше 3 мб!";
	}
	
	else {
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
		//Получаем расширение загруженного файла
		$avatype = strrchr(($_FILES['fileava']['name']), '.');
		
		//Задаём имя путь до аватарок: (../users/id_пользователя/ava.расширение_файла)
		$avaname = $dir.'ava'.$avatype;
		//Перенос файла в директорию, переименование в ava.расширение_файла
		$movefile = move_uploaded_file($_FILES['fileava']['tmp_name'], $avaname);
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
	}
?>