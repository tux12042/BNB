
verifUrl = window.location.href;

var verif1 = verifUrl.indexOf("sujets.php?id=1");  
var verif2 = verifUrl.indexOf("sujets.php?id=2");  
var verif3 = verifUrl.indexOf("sujets.php?id=3");  
var verif4 = verifUrl.indexOf("sujets.php?id=4");  
var verif5 = verifUrl.indexOf("sujets.php?id=5");  


function domaine_1() {
    document.getElementById("eco-citoyenneté").style.display = 'block';
    document.getElementById("dynamisation").style.display = 'none';
    document.getElementById("lien-inter-générationnel").style.display = 'none';
    document.getElementById("tourisme").style.display = 'none';
    document.getElementById("economie").style.display = 'none';

    document.getElementById("btn1").style.color = '#B6D37B';
    document.getElementById("btn2").style.color = 'white';
    document.getElementById("btn3").style.color = 'white';
    document.getElementById("btn4").style.color = 'white';
    document.getElementById("btn5").style.color = 'white';
}

function domaine_2() {
    document.getElementById("eco-citoyenneté").style.display = 'none';
    document.getElementById("dynamisation").style.display = 'block';
    document.getElementById("lien-inter-générationnel").style.display = 'none';
    document.getElementById("tourisme").style.display = 'none';
    document.getElementById("economie").style.display = 'none';

    document.getElementById("btn2").style.color = '#E8917B';
    document.getElementById("btn1").style.color = 'white';
    document.getElementById("btn3").style.color = 'white';
    document.getElementById("btn4").style.color = 'white';
    document.getElementById("btn5").style.color = 'white';
}

function domaine_3() {
    document.getElementById("eco-citoyenneté").style.display = 'none';
    document.getElementById("dynamisation").style.display = 'none';
    document.getElementById("lien-inter-générationnel").style.display = 'block';
    document.getElementById("tourisme").style.display = 'none';
    document.getElementById("economie").style.display = 'none';

    document.getElementById("btn3").style.color = '#7BA3D7';
    document.getElementById("btn2").style.color = 'white';
    document.getElementById("btn1").style.color = 'white';
    document.getElementById("btn4").style.color = 'white';
    document.getElementById("btn5").style.color = 'white';
}

function domaine_4() {
    document.getElementById("eco-citoyenneté").style.display = 'none';
    document.getElementById("dynamisation").style.display = 'none';
    document.getElementById("lien-inter-générationnel").style.display = 'none';
    document.getElementById("tourisme").style.display = 'block';
    document.getElementById("economie").style.display = 'none';

    document.getElementById("btn4").style.color = '#F9E59A';
    document.getElementById("btn2").style.color = 'white';
    document.getElementById("btn3").style.color = 'white';
    document.getElementById("btn5").style.color = 'white';
    document.getElementById("btn1").style.color = 'white';
}

function domaine_5() {
    document.getElementById("eco-citoyenneté").style.display = 'none';
    document.getElementById("dynamisation").style.display = 'none';
    document.getElementById("lien-inter-générationnel").style.display = 'none';
    document.getElementById("tourisme").style.display = 'none';
    document.getElementById("economie").style.display = 'block';

    document.getElementById("btn5").style.color = '#64666A';
    document.getElementById("btn2").style.color = 'white';
    document.getElementById("btn3").style.color = 'white';
    document.getElementById("btn4").style.color = 'white';
    document.getElementById("btn1").style.color = 'white';
}

if (verif1 == 36) {
    domaine_1();

};


if (verif2 == 36) {
    domaine_2();
    
    };

    if (verif3 == 36) {
        domaine_3();
    
    };

    if (verif4 == 36) {
        domaine_4();
    
    };

    if (verif5 == 36) {
       domaine_5();
    
    };





/**********/
function onglets_1() {
    document.getElementById("commentaires").style.display = 'flex';
    document.getElementById("reunions").style.display = 'none';
    document.getElementById("comptes_rendus").style.display = 'none';

    document.getElementById("onglets1").style.color = 'white';
    document.getElementById("onglets2").style.color = '#BADCD2';
    document.getElementById("onglets3").style.color = '#BADCD2';

    document.getElementById("onglets1").style.background = '#BADCD2';
    document.getElementById("onglets2").style.background = 'white';
    document.getElementById("onglets3").style.background = 'white';

    

}

function onglets_2() {
    document.getElementById("commentaires").style.display = 'none';
    document.getElementById("reunions").style.display = 'flex';
    document.getElementById("comptes_rendus").style.display = 'none';

    document.getElementById("onglets1").style.color = '#BADCD2';
    document.getElementById("onglets2").style.color = 'white';
    document.getElementById("onglets3").style.color = '#BADCD2';

    document.getElementById("onglets1").style.background = 'white';
    document.getElementById("onglets2").style.background = '#BADCD2';
    document.getElementById("onglets3").style.background = 'white';

    
}

function onglets_3() {
    document.getElementById("commentaires").style.display = 'none';
    document.getElementById("reunions").style.display = 'none';
    document.getElementById("comptes_rendus").style.display = 'flex';

    document.getElementById("onglets1").style.color = '#BADCD2';
    document.getElementById("onglets2").style.color = '#BADCD2';
    document.getElementById("onglets3").style.color = 'white';

    document.getElementById("onglets1").style.background = 'white';
    document.getElementById("onglets2").style.background = 'white';
    document.getElementById("onglets3").style.background = '#BADCD2';

    
}
/********/
function page_1() {
    document.getElementById("mois1").style.display = 'grid';
    document.getElementById("mois2").style.display = 'none';
    document.getElementById("mois3").style.display = 'none';
    document.getElementById("btn_1").style.background = '#212449';
    document.getElementById("btn_2").style.background = 'white';
    document.getElementById("btn_3").style.background = 'white';
}

function page_2() {
    document.getElementById("mois1").style.display = 'none';
    document.getElementById("mois2").style.display = 'grid';
    document.getElementById("mois3").style.display = 'none';
    document.getElementById("btn_1").style.background = 'white';
    document.getElementById("btn_2").style.background = '#212449';
    document.getElementById("btn_3").style.background = 'white';
}

function page_3() {
    document.getElementById("mois1").style.display = 'none';
    document.getElementById("mois2").style.display = 'none';
    document.getElementById("mois3").style.display = 'grid';
    document.getElementById("btn_1").style.background = 'white';
    document.getElementById("btn_2").style.background = 'white';
    document.getElementById("btn_3").style.background = '#212449';
}