function toggle(name) {
	var menu = document.getElementById(name);
	if (menu.className.split(' ').indexOf("down")>=0) {
		menu.className = "";
	}
	else {
		menu.className += "down";
	}
}

function dropdown() {
	toggle("menu-button");
	toggle("drop-menu");
}