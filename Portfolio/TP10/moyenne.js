function calcul_moyenne() {
    var n1 = prompt("donner la première note : ");
    var n2 = prompt("donner la deuxième note :");
    var n3 = prompt("donner la troisième note :");
    var somme = Number(n1) + Number(n2) + Number(n3);
    document.write("voici la somme : " + somme + "<br>");
    var moyenne = somme / 3;
    document.write("voici la moyenne : " + moyenne + "<br>");

    if (moyenne < 10) {
        document.write("vous n'êtes pas admis");
    }

    else {
        document.write("vous êtes admis !");
    }
}

function test_age() {
    var age = prompt("quel est votre âge ? : ");
    if (age < 18) {
        document.write("vous êtes mineur");
        document.bgColor = "red";
    }

    else {
        document.write("vous êtes majeur");
        document.bgColor = "green";
    }
}

function simple_affichage() {
    var name = prompt("donner votre nom : ");
    let prenom = prompt("donner votre prénom : ");

    document.write('<div style="margin:auto; width: 300px; border: 2px solid black; ">');
    document.write("Bonjour " + prenom + " " + name);
    document.write('</div>');
}

function test_couleur() {
    let couleur = prompt("donner une couleur: ");

    if (couleur == "orange" || couleur == "orange") {
        document.body.style.backgroundColor = "salmon";
    }
    else if (couleur == "bleu" || couleur == "bleu") {
        document.body.style.backgroundColor = "lightblue";
    }
    else if (couleur == "violet" || couleur == "violet") {
        document.body.style.backgroundColor = "purple";
    }
    else if (couleur == "rose" || couleur == "rose") {
        document.body.style.backgroundColor = "pink";
    }
    else {
        document.write("couleur non comprise");
    }
}