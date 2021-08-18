<?php
session_start();

?> 
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/style.css">
    <script src="../script/script.js"></script>
    <link rel="icon" type="image/png" href="./medias/emoticones/autre/fav.png" />
    <title>Bougez notre Bassigny - BnB</title>
</head>

<body>

   <!-- Menu ici -->
<?php
include('./html/bloque/menu.php')

?>

    <section id="retour" class="accueil">
        <div class="cadre_vert"></div>
        <article>
            <p class="bougez">Bougez</p>
            <p class="notre">notre</p>
            <p class="bassigny">Bassigny</p>

            <a href="#domaines">voir domaines<img src="medias/logos/fleches.PNG" alt=""></a>
        </article>
        <img src="medias/logos/illustration.png" alt="famille_BnB">

        <p id="domaines">Nos domaines d'action</p>
    </section>


    <section class="domaines">
        <a href="html/sujets.php?id=1" class=domaine1>
            <img src="medias/emoticones/ecocitoyennete/1_ecocitoyennete.svg" alt="Image à insérer">
            <p>Eco-citoyenneté</p>
        </a>
        <a href="html/sujets.php?id=2" class=domaine2 class=domaine2>
            <img src="medias/emoticones/dynamisation/1_dynamisation.svg" alt="Image à insérer">
            <p>Dynamisation</p>
        </a>
        <a href="html/sujets.php?id=3" class=domaine3 class=domaine3>
            <img src="medias/emoticones/intergenerationnel/1_intergenerationnel.svg" alt="Image à insérer">
            <p>Lien inter-générationnel</p>
        </a>
        <a href="html/sujets.php?id=5" class=domaine4 class=domaine4>
            <img src="medias/emoticones/economie/1_economie.svg" alt="Image à insérer">
            <p>Economie</p>
        </a>
        <a href="html/sujets.php?id=4" class=domaine5 class=domaine5>
            <img src="medias/emoticones/tourisme/1_tourisme.svg" alt="Image à insérer">
            <p>Tourisme</p>
        </a>
        
    </section>

    <h2>Nos prochaines réunions</h2>
    <section class="calendrier">
        
<?php
include('./html/outils/connexionBDD.php');
$reponse = $bdd->query('SELECT * FROM reunion WHERE date >= NOW() ORDER BY reunion . date ASC LIMIT 0, 5');

while ($donnees = $reponse->fetch())
{

?>

    
<form method="post"  action="./html/traitement/inscriptionReu.php">

<input type="hidden" name="id" value="<?php echo $donnees['id'];?>">

<?php ?>
            <article>
                <p><?php  echo date('d', strtotime($donnees['date']));  ?></p> <br>
                <p><?php echo date('M', strtotime($donnees['date']));  ?></p> <br>
                <p><?php echo date('Y', strtotime($donnees['date']));  ?></p> <br>
            </article>
            <article>
                <p style=" <?php  
                if ($donnees['categorie'] == 1) {
                    echo 'background: #B6D37B !important;';
                }
                if ($donnees['categorie'] == 2) {
                    echo 'background: #E8917B !important;';
                }
                if ($donnees['categorie'] == 3) {
                    echo 'background: #7BA3D7 !important;';
                }
                if ($donnees['categorie'] == 4) {
                    echo 'background: #64666A !important;';
                }
                if ($donnees['categorie'] == 5) {
                    echo 'background: #F9E59A !important;';
                }
                
                ?>" 
                
                
                ><?php echo $donnees['nom'];  ?></p>
                <p><?php echo $donnees['description'];  ?></p>
                <p><?php
    $verifinscript = $bdd->query('SELECT * FROM abonnement WHERE id_reunion = ' . $donnees['id'] );
            
    $dejainscript = $verifinscript->rowCount();
    $verifinscript->CloseCursor();
    
    echo $dejainscript; ?> / <?php echo $donnees['nb_perso_max']; ?> participants,
                </p>
                <input type="submit" value="S'inscrire">
            </article>
        </form>


<?php
}

$reponse->closeCursor();


?>



        
    </section>

    <section class="collectif">
        <article>
            <p>Collectif citoyen</p>
            <p>Un collectif citoyen est un ensemble de personnes, vivant le plus souvent dans la même commune, qui se
                rassemble pour discuter de différents sujets ou pour défendre une cause. </p>
            <p>Democratie participative</p>
            <p>Une démocratie participative désigne l’ensemble des procédures mises en place par une commune ou un
                regroupement de communes afin d’augmenter l’implication de ses citoyens dans la vie politique et de les
                intégrer dans les prises de décisions.
            </p>
        </article>
        <div><img src="medias/logos/6_typographique.png" alt=""></div>
    </section>


    <footer>
        <article class="mentions">
            © 2021 - Bougez notre Bassiny <br>
            Mentions légales
        </article>
        <article class="contact">
            Nous contacter <br>
            bougeznotrebassigny@gmail.com
        </article>
        <a href="#top"><img src="medias/emoticones/autre/flèche.svg" alt=""></a>
    </footer>


</body>

</html>

