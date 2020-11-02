document.getElementById("pNumber").addEventListener("input", onInput);

function onInput(ev) { 
    if(ev.target.value.endsWith("-")) {
        ev.target.value = ev.target.value.substr(0, ev.target.value.length -1);
        return;
    }

    if (ev.target.value.length === 3) { 
        var value = ev.target.value.concat("-");
        ev.target.value = value;
    }

    if (ev.target.value.length === 7) { 
        var value = ev.target.value.concat("-");
        ev.target.value = value;
    }
    ev.target.value = ev.target.value.substr(0,12);
}

document.getElementById("reset").addEventListener("click", onClick);

function onClick() {
    document.getElementById("pNumber").value = "";
}