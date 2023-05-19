//Получение логина пользователя и вывод его в шапке
//Если пользователь авторищован - вывод логина и в личном кабинете
var userlogin = document.querySelector('#userlogin');
var username = document.querySelector('#username');

var ajgetlogin = $.ajax({
	url: "http://bliss/php/getuserlogin.php",
});

ajgetlogin.done(function(response){
	//Если ответ не пустой (пользователь авторизован) - обращение по логину
	if (userlogin!=null){
		userlogin.innerHTML = response;
	}
	if(username!=null) {
		username.innerHTML = response;
	}
	//Если ответ пустой (пользователь не авторизован) - обращение как к гостю
	if (response==''&&userlogin!=null) {
		userlogin.innerHTML = 'гость';
	}
});