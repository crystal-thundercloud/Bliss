//Функция увеличения числа в заданном поле dcmntelem на величину stp до достижения верхней границы mxm
function addval(mxm, stp, dcmntelem) {
	let a=+document.querySelector(dcmntelem).value;
	if (a<mxm) {
		a+=stp;
		document.querySelector(dcmntelem).value = a;
	}
}

//Функция уменьшения числа в заданном поле dcmntelem на величину stp до достижения нижней границы mnm	
function dclnval(mnm, stp, dcmntelem) {
	let b=+document.querySelector(dcmntelem).value;
	if (b>mnm) {
		b-=stp;
		document.querySelector(dcmntelem).value=b;
	}
}