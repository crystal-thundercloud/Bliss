<?php
	//Получение таблицы сообщений на странице управления
	include_once 'dbconn.php';
	
	//Выбор столбцов для вывода
	$msgtable = mysqli_query($conn, "SELECT №, name, message FROM messages");
	
	//Если выбор произошёл без ошибок
	if ($msgtable) {
		$rownumb = mysqli_num_rows($msgtable);
		
		echo "<form id='usermsgfrm' method='post' enctype='multipart/form-data'>";
		echo "<table><tr><th>N</th><th>Имя</th><th>Сообщение</th><th><input type='checkbox' id='selectall'></th></tr>";
		
		//Счётчик для вывода всех строк таблицы меньше общего числа строк
		for ($i = 0 ; $i < $rownumb ; ++$i) {
			//Каждую из найденных строк в виде массива кладём в переменную row
			$row = mysqli_fetch_row($msgtable);
			
			echo "<tr>"; //Открывающий тэг строки таблицы
			
			//Последующие ячейки (2, но будет добавлен ещё столбец)
			for ($j = 0 ; $j < 3 ; ++$j) {
				
				//Для вывода пользовательского форматирования используется функция декодирования
				//Кавычки останутся закодированными для исключения инъекций в код
				echo "<td>"; echo htmlspecialchars_decode($row[$j]); echo "</td>";
			}
			echo "<td><input type='checkbox' name='msgarr[$row[0]]' value='0'></td>";
			echo "</tr>"; //Закрывающий тэг строки таблицы
		}
		echo "</table>"; //Закрывающий тэг всей таблицы
		echo "</form>";
	}
?>