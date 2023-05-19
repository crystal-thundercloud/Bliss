var zglvk = document.querySelector("#zglvk");
var pages = document.querySelectorAll(".page");
		
var prevlessonbutton = document.querySelector("#prevlesson");
var prevbutton = document.querySelector("#prev");
		
var nextbutton = document.querySelector("#next");
var nextlessonbutton = document.querySelector("#nextlesson");
		
prevbutton.addEventListener("click", prev);
nextbutton.addEventListener("click", next);

document.getElementById("current").innerHTML = "Страница 1 из "+pages.length;

var i = 1;
var k = location.hash.substring(2);

//При обновлении страницы её номер получается из хэша
if (k != '') {
	if (k != 1) {
	document.getElementById("current").innerHTML = "Страница "+k+" из "+pages.length;
	i = +k-1;
	pages[0].style.display = "none";
	next();
	}
}

//Функция переключения вперёд
function next() {
	for (; i<pages.length, elem = pages[i-1];) {
		
		var j = i+1;
		
		//На первой странице отображается кнопка перехода к предыдущему уроку	
		if (i == 0) {
			prevbutton.style.display = "none";
			prevlessonbutton.style.display = "inline-block";
		}
		
		//На всех, кроме первой и последней, отображается кнопка "назад"
		//она заменяет кнопку перехода к предыдущему уроку
		else if (i>=0&&i!=pages.length-1) {
			prevlessonbutton.style.display = "none";
			prevbutton.style.display = "inline-block";
		}
		
		//Для последней страницы отдельно прописано отображение кнопки "назад"
		//А также замена кнопки "вперёд" на кнопку перехода к следующему уроку
		else if (i == pages.length-1) {
			prevlessonbutton.style.display = "none";
			prevbutton.style.display = "inline-block";
			nextbutton.style.display = "none";
			nextlessonbutton.style.display = "inline-block";
		}
			
		//Отображение наполнения страницы нужного номера
		if (pages[i]!=undefined) {
			elem.style.display = "none";
			pages[i].style.display = "flex";
			i++;
		}
		
		//Запись номера страницы в хэш
		hrfnext = '#p'+j;
		nextbutton.onclick = window.location.href = hrfnext;
		
		//Отображение номера страницы
		zglvk.scrollIntoView({block: "start"});
		document.getElementById("current").innerHTML = "Страница "+j+" из "+pages.length;
		
		//Если пользователь долистал до последней страницы
		//И если он залогинен
		//Записать пройденный урок в его достижения
		if (j == pages.length) {
			
			//Ajax-запрос на проверку, выполнен ли вход
			var ajislogged = $.ajax({
				url: "http://bliss/php/cabauthonly.php",
			})
					
			ajislogged.done(function(response) {
				if (response != "no") { //Пройденные уроки засчитываются только если вход выполнен
					
					//Получение названия курса и номера открытого урока
					let path = location.pathname;
					path = path.split('/');
					let coursename = path[2];
					let lesson = path[3].split('.');
					let lessonnumber = lesson[0];
					
					//Курс по html5 в базе данных называется html
					//переименовываем, чтобы было проще					
					if (coursename=='html5') coursename = 'html';
					
					//Общий вид в базе данных: курс_lНомер (например, html_l1)
					course_les = coursename+'_'+lessonnumber;
					
					//Отправка курса и номера в нужном виде на сервер
					let fd = new FormData();
					fd.append('course_lesson', course_les);
							
					ajfinishedles = $.ajax({
						url: "http://bliss/php/finishedlessonstodb.php",
						type: "POST",
						data: fd,
						processData: false,
						contentType: false,
					})
					
					//Если были ошибки записи - сообщить
					ajfinishedles.done(function(response) {
						if (response!="") alert(response);
					})
				}
			})
		}
		
		break;
	}
}
	
//Функция переключения назад	
function prev() {
	for (; i>0, elem = pages[i-2];) {
		
		//На всех страницах, кроме первой и последней, отображаются кнопки "назад" и "вперёд"
		//она заменяет кнопку перехода к предыдущему уроку
		if (i>2&&i!=pages.length-1) {
			prevlessonbutton.style.display = "none";
			prevbutton.style.display = "inline-block";
			nextbutton.style.display = "inline-block";
			nextlessonbutton.style.display = "none";
		}
		
		//На первой странице отображается кнопка перехода к предыдущему уроку
		else if (i == 2) {
			prevlessonbutton.style.display = "inline-block";
			prevbutton.style.display = "none";
		}
		
		//Отображение наполнения страницы нужного номера
		if (pages[i-1]!=undefined) {
			pages[i-1].style.display = "none";
			elem.style.display = "flex";
			i--;
		}
		
		var j = i;
		
		//Запись номера страницы в хэш
		hrfprev = '#p'+j;
		prevbutton.onclick = window.location.href = hrfprev;
		
		//Отображение номера страницы
		zglvk.scrollIntoView({block: "start"});
		document.getElementById("current").innerHTML = "Страница "+j+" из "+pages.length;
		break;
	}
}