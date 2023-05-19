//Ajax-запрос на проверку, выполнен ли вход
var ajislogged = $.ajax({
	url: "http://bliss/php/cabauthonly.php",
})
		
ajislogged.done(function(response) {
	if (response != "no") { //Пройденные уроки засчитываются только если вход выполнен
		var lessons = document.querySelectorAll(".l");
		
		let path = location.pathname;
		path = path.split('/');
		let coursename = path[2];
			
		if (coursename=='html5') coursename = 'html';
			
		var ajgetachievs = $.ajax({
			url: "http://bliss/php/userinfoachievs.php",
			dataType: "text",
		})

		ajgetachievs.done(function(response) {
			if (response!="") { //Если достижения пользователя не пусты
				//Избавляемся от значений администратора и тестировщика
				if (response.includes('is_admin')) response = response.replace('is_admin', '');
				if (response.includes('is_tester')) response = response.replace('is_tester', '');
				
				//Стираем лишние пробелы по краям
				response = response.trim();
				
				if (response!='') {

					let reg = new RegExp(coursename + '_l[0-9]+', 'g');						
					var courselessons = '';
					
					//Оставляем только ту информацию, которая соответствует открытой странице
					//Например, если открыты уроки по html - оставляем только информацию о пройденных уроках html					
					while ((matches = reg.exec(response))!== null) {
						courselessons += ' '+matches;
					}
					
					//Если информация найдена
					if (courselessons!='') {
						//Оставляем только номера уроков
						lessonnums = courselessons.replace(/[^ 0-9]+/g, '');
						lessonnums = lessonnums.trim();
						lessnumsarr = lessonnums.split(' ');
						
						//Даём им класс оконченных и добавляем всплывающую подсказку						
						for (let i=0; i<lessnumsarr.length; i++) {
							let j = lessnumsarr[i];
							lessons[j-1].className += " finished";
							lessons[j-1].title = "Урок завершён!";
						}
					}
				}
			}
		})
	}	
})