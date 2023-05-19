//Скрипт для мобильного меню
var menu = document.querySelector(".menu");
var mobilemenubutton = document.querySelector(".mobilemenu");

mobilemenubutton.addEventListener("click", menuopenclose);

function menuopenclose() {
	//Если меню закрыто - при клике открыть
	if (menu.className == "menu") {
		menu.className += " mobilemenulinks";
		mobilemenubutton.style.color = "white";
		mobilemenubutton.style.textDecoration = "underline";
	}
	//Если открыто - при клике закрыть
	else {
		menu.className = "menu";
		mobilemenubutton.style.color = "";
		mobilemenubutton.style.textDecoration = "none";
	}
}