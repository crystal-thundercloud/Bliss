//Ajax-запрос, получающий данные об аватаре пользователя и добавляющий его на страницу
var ava = document.querySelector("#ava");

var ajgetuserava = $.ajax({
	url: "http://bliss/php/placeavaonpage.php",
	dataType: "text",
})

ajgetuserava.done(function(response) {
	if (response!="") {
		ava.setAttribute('src', response);
	}

	else {
		ava.setAttribute('src',  'http://bliss/img/avatars/base.png');
	}
})

//Ajax-запрос, получающий информацию о достижениях пользователя
var achiev = document.querySelector("#achiev");

var ajgetachievs = $.ajax({
	url: "http://bliss/php/userinfoachievs.php",
	dataType: "text",
})

ajgetachievs.done(function(response) {
	noachieve = true;
	if (response=="") {
		achiev.innerHTML = "<i><small>Здесь пока ничего нет...</small></i>";
	}
	else {
		if (response.includes('is_admin')) {
			achiev.innerHTML += "<div><img src='http://bliss/img/achievments/администратор.svg' title='Администратор' alt='Администратор'><p>Выдаётся администраторам</p></div>";
			noachieve = false;
		}
		if (response.includes('is_tester')) {
			achiev.innerHTML += "<div><img src='http://bliss/img/achievments/бета-тестер.svg' title='Бета-тестер' alt='Бета-тестер'><p>Выдаётся тестировщикам</p></div>";
			noachieve = false;
		}
		if (response.includes('html_l1') && response.includes('html_l2') && response.includes('html_l3') && response.includes('html_l4') && response.includes('html_l5')) {
			achiev.innerHTML += "<div><img src='http://bliss/img/achievments/знатокHTML.svg' title='Знаток HTML' alt='Знаток HTML'><p>Выдаётся за окончание всех уроков по HTML</p></div>";
			noachieve = false;
		}
		
		if (response.includes('php_l1') && response.includes('php_l2') && response.includes('php_l3') && response.includes('php_l4') && response.includes('php_l5')) {
			achiev.innerHTML += "<div><img src='http://bliss/img/achievments/знатокPHP.svg' title='Знаток PHP' alt='Знаток PHP'><p>Выдаётся за окончание всех уроков по PHP</p></div>";
			
			noachieve = false;
		}
	}
	if (noachieve==true) {
		achiev.innerHTML = "<i><small>Здесь пока ничего нет...</small></i>";
	}
})

//Подготовка к ajax-запросу о дате регистрации и почте пользователя
var userinfocab = document.querySelector("#userinfocab");

var popup = document.querySelector("#popup");
var msg = document.querySelector("#msg");
var btn = document.querySelector("#btn");

//Вспомогательная функция - удаление стандартных тайтлов над полями форм
function nobubble(field) {
	return function(e) {
		if (!field.validity.valid) {
			e.preventDefault();
			field.focus();
		}
	}
}

//Ajax-запрос о дате регистрации и почте пользователя
var ajuserinfo = $.ajax({
	url: "http://bliss/php/userinfo.php",
	dataType: "text",
})

ajuserinfo.done(function(response) {
	userinfocab.innerHTML = response;

	var mail = document.querySelector("#usermail");
	var usermailchangebtn = document.querySelector("#changemail");
	var mailfrm = document.querySelector("#mailfrm");

	mailreg = /^[a-zA-Z\d][a-zA-Z\d._-]{1,}@[a-z\d]{2,}\.[a-z]{2,}$/;
	
	mailfrm.addEventListener("submit", function(e) { e.preventDefault();});
	mailfrm.addEventListener("invalid", nobubble(mail), true);

	//Проверка корректности введённой почты
	usermailchangebtn.addEventListener("click", function(){
		if (usermailchangebtn.value == "Изменить почту") {
			mail.disabled = false;
			usermailchangebtn.value = 'Сохранить';
			usermailchangebtn.type = "submit";

			mail.addEventListener("change", emailcheck);
		
			function emailcheck() {
				if (mail.value=="" || mail.value=="NULL" || mail.value==0) {
				mail.setCustomValidity('Введите адрес почты');
				mail.style.borderColor = "rgb(249, 139, 139)";
				mail.style.background = "linear-gradient(rgba(255, 255, 255, .5), rgba(249, 139, 139, .5))";
				s00.innerHTML = "Введите почтовый адрес";
				}

			else if (mailreg.test(mail.value)==false){ 
				mail.setCustomValidity('Введите корректный почтовый адрес');
				mail.style.borderColor = "rgb(249, 139, 139)";
				mail.style.background = "linear-gradient(rgba(255, 255, 255, .5), rgba(249, 139, 139, .5))";
				s00.innerHTML = "Введите корректный почтовый адрес";
				}

			else { 
				mail.setCustomValidity('');
				mail.style.borderColor = "rgb(116, 252, 118)";
				mail.style.background = "linear-gradient(rgba(255, 255, 255, .5), rgba(116, 252, 118, .5))";
				s00.innerHTML = "";
				}
			}
		}

		//Запись корректно введённого почтового адреса в базу и перезагрузка страницы
		else {
			if (mail.validity.valid) {
				var ajmail = $.ajax({
					url: "http://bliss/php/mailchange.php",
					type: "POST",
					data: $('#mailfrm').serialize(),
					dataType: "text",
				})
		
				ajmail.done(function(response) {
					popup.style.display = "flex";
					popup.scrollIntoView({block: "start", behavior: "smooth"});
					msg.innerHTML = response;
					btn.style.display = 'inline-block';
					btn.addEventListener("click", function(){window.location.reload()});
				})
			}
		}
	});
})

//Получение роли пользователя
var role = document.querySelector("#role");

ajuserrole.done(function(response) {
	if (response==0) {
		role.innerHTML = "пользователь";
	}
	
	else if (response==1) {
		role.innerHTML = "администратор";
	}
})