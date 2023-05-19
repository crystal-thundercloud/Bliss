//Подлючение библиотеки jQuery
document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>');

//Обозначение кнопок меню, доступных только при входе/выходе
var exit = document.querySelector("#exit");
var getinacc = document.querySelector("#getinacc");
var cabbutton = document.querySelector("#cabbutton");

//Ajax-запрос на проверку, выполнен ли вход
var ajislogged = $.ajax({
	url: "http://bliss/php/cabauthonly.php",
})
		
ajislogged.done(function(response) {
	if (response == "no") { //Если вход не выполнен - кнопки кабинета и выхода убираются, появляется кнопка входа в аккаунт
		exit.style.display = "none";
		cabbutton.style.display = "none";
		getinacc.style.display = "inline";
		
		//Если пользователь не вошёл в аккаунт,
		//но пытается открыть страницу кабинета или администратора напрямую
		// - перенаправление на страницу входа
		
		if (window.location == "http://bliss/html/cab.html#"||window.location == "http://bliss/html/cab.html"||window.location == "http://bliss/html/adminpage.html#"||window.location == "http://bliss/html/adminpage.html") {
			window.location.replace("http://bliss/html/log.html");
		}
	}
				
	else { //Если вход выполнен - отображение кнопок выхода и страницы личного кабинета, скрытие кнопки входа
		exit.style.display = "inline";
		cabbutton.style.display = "inline";
		getinacc.style.display = "none";
		
		//Если пользователь пытается открыть страницу входа или регистрации
		//То будет перенаправлен на страницу личного кабинета
		
		if (window.location == "http://bliss/html/log.html#"||window.location == "http://bliss/html/log.html"||window.location=="http://bliss/html/reg.html#"||window.location=="http://bliss/html/reg.html"||window.location=="http://bliss/html/forgotpass.html"||window.location=="http://bliss/html/forgotpass.html#") {
			window.location.replace("http://bliss/html/cab.html");
		}
	}
})

//Кнопка администратора
var adminpage = document.querySelector("#adminpage");

var ajuserrole = $.ajax({
	url: "http://bliss/php/userinforole.php",
	dataType: "text",
})

ajuserrole.done(function(response) {
	if (response==0) { //Если пользователь не администратор - скрытие кнопки
		adminpage.style.display="none";
		
		//Если не администратор пытается открыть страницу администратора напрямую
		//то будет перенаправлен на главную страницу
		
		if (window.location == "http://bliss/html/adminpage.html"||window.location == "http://bliss/html/adminpage.html#") {
			window.location.replace("http://bliss/index.html");
		}
	}

	else if (response==1) { //Если пользователь - администратор, то кнопка отображается
		adminpage.style.display="inline";
	}
})

//Выход из аккаунта
exit.addEventListener("click", logout);

function logout() {
	var ajlogout = $.ajax({
		url: "http://bliss/php/sessend.php",
	})
				
	ajlogout.done(function(){ //При клике на кнопку очищаются куки и данные сессии, страница обновляется
		//document.cookie = "PHPSESSID=; expires=Thu, 01 Jan 1970 00:00:00   UTC;path=/;host=localhost";
		window.location.reload();
	})
}