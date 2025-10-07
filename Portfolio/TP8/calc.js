function somme() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("resultat").value = c
}
function soustraction() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("resultat").value = c
}
function multiplication() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("resultat").value = c
}
function division() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    document.getElementById("resultat").value = c
    if (Number(b) === 0) document.getElementById("resultat").value = "Erreur"; return;
}
function reset() {
    document.getElementById("t1").value = "";
    document.getElementById("t2").value = "";
    document.getElementById("resultat").value = "";
    document.getElementById("parite").value = "";
}

function pair() {
    var x = document.getElementById("t1").value
    if (x % 2 == 0) {
        document.getElementById("parite").value = " Pair "
    }
    else {
        document.getElementById("parite").value = " Impair "
    }
}

function permute() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    var x = a;
    a = b;
    b = x;

    document.getElementById("t1").value = a;
    document.getElementById("t2").value = b;
}