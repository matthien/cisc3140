document.getElementById("pNumber").addEventListener("input", onInput);

function onInput(ev) { 
    if(ev.target.value.endsWith("-")) {
        ev.target.value = ev.target.value.substr(0, ev.target.value.length -1);
        return;
    }

    if (ev.target.value.length === 4) { 
    	var a = ev.target.value.substr(0, ev.target.value.length - 1)
        a = a.concat("-");
        a = a.concat(ev.target.value.substr(3, ev.target.value.length-1));
        ev.target.value = a;
    }

    if (ev.target.value.length === 8) { 
    	var a = ev.target.value.substr(0, ev.target.value.length - 1)
        a = a.concat("-");
        a = a.concat(ev.target.value.substr(7, ev.target.value.length-1));
        ev.target.value = a;
    }
    ev.target.value = ev.target.value.substr(0,12);
}

document.getElementById("reset").addEventListener("click", onClick);

function onClick() {
    document.getElementById("pNumber").value = "";
}