<?php
	//Получение таблицы пользователей на странице управления
	include_once 'dbconn.php';
	
	//Выбор столбцов для вывода
	$usertable = mysqli_query($conn, "SELECT ID, username, mail, registration_date, is_admin FROM users_list");
	
	//Если выбор произошёл без ошибок
	if ($usertable) {
		$rownumb = mysqli_num_rows($usertable);
		//echo "<h3>Список пользователей</h3>";
		echo "<form id='usertablefrm' method='post' enctype='multipart/form-data'>";
		echo "<table><tr><th>ID</th><th>Логин</th><th>Почта</th><th>Дата регистрации</th><th>Админ?</th></tr>";
		
		//Счётчик для вывода всех строк таблицы меньше общего числа строк
		for ($i = 0 ; $i < $rownumb ; ++$i) {
			//Каждую из найденных строк в виде массива кладём в переменную row
			$row = mysqli_fetch_row($usertable);
			
			echo "<tr>"; //Открывающий тэг строки таблицы
			
			//Последующие ячейки (всего 5, но переменная меньше 4, так как последний столбец будет выведен в ином виде)
			for ($j = 0 ; $j < 4 ; ++$j) {
				echo "<td>$row[$j]</td>";
			}
			
			//Каждый шестой столбец - значение is_admin типа boolean
			//Для удобства его значение будет представлено в виде чекбокса
			//1 = присутствие галочки = пользователь обладает правами администратора
			if ($row[4]==1) {
				
				//При отсутствии галочки форма не отправляет значение 0 или off
				//Поэтому перед каждым чекбоксом создаётся скрытое поле с тем же именем и значением 0
				//Если чекбокс отмечен - он перекроет значение скрытого поля
				//Если нет - будет передано значение скрытого поля (0)
				echo "<td><input type='hidden' name='myarr[$row[0]]' value='0'><input type='checkbox' name='myarr[$row[0]]' checked disabled></td>";
			}
			else {
				echo "<td><input type='hidden' name='myarr[$row[0]]' value='0'><input type='checkbox' name='myarr[$row[0]]' disabled></td>";
			}
			echo "</tr>"; //Закрывающий тэг строки таблицы
		}
		echo "</table>"; //Закрывающий тэг всей таблицы, после него вывода нет
		echo "</form>";
		
		mysqli_free_result($usertable); //Очистка результата
	}
?>