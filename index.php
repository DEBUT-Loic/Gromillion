<?php session_start(); $_SESSION['Back']=$_SERVER['PHP_SELF']; ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
	<link rel="stylesheet" type="text/css" href="../style/font.css">
	<link rel="stylesheet" type="text/css" href="style/styleGroM.css">
	<link rel="icon" href="https://groludik.debut-loic.fr/img/icon.svg">
	<meta name="keywords" content="jeux, jeux en ligne, gromillion, qui veut gagner des millions, groludik, quiz, debut loic, debut, loic, hasard, vexilik, accord ou désaccord, gromillion">
	<meta name="description" content="Gromillion est un quiz de culture générale s'inspirant de l'émission Qui veut gagner des millions. Vous devez répondre 12 questions avec 4 propositions chacunes pour remporter 1 million de Grolor et bien entendu vous avez 3 jokers pour vous aider.">
	<meta name="robots" content="index"/>
	<meta name="copyright" content="© DEBUT Loïc 2023" />
	<meta property="og:type" content="website">
	<meta property="og:title" content="Gromillion">
	<meta property="og:site_name" content="Gromillion">
	<meta property="og:locale" content="fr_FR">
	<meta property="og:image" content="https://groludik.debut-loic.fr/img/icon.svg">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="script/milliers.js"></script>
	<script src="script/qvgdm.js"></script>
	<title> Gromillion - Groludik </title>
</head>
<body>

<main id="pivot" class="cache">
	<section>
		<article id="quiz">
			<div id="joker">
				<button class="abandon">ABANDONNER</button>
				<button data-joker="50:50">50:50</button>
				<button data-joker="X2">X2</button>
				<button data-joker="Switch"><i class="fa-solid fa-repeat"></i></button>
			</div>
			<div id="chrono">
				<div id="chronoBackground">
					<div>
						<p class="pChronoPort">15</p>
					</div>
				</div>
			</div>
			<div id="pyramide">
				<div id="palier">
					<p class="numQuestion">12 </p>
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_blanc.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">11 </p>
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">10 </p>
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">9 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">8 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div id="palier">
					<p class="numQuestion">7 </p>
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_blanc.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">6 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">5 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">4 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">3 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
				<div id="palier"><p class="numQuestion">2 </p>
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_blanc.svg"/>
					</div>
				</div>
				<div>
					<p class="numQuestion">1 </p> 
					<div class="sousPyra">
						<p class="argentPyra"></p>
						<img src="img/Grolor_gras_orange.svg"/>
					</div>
				</div>
			</div>
		</article>
		<div id="chronoPortable">
			<div id="chronoProgress"></div>
			<p class="pChronoPort">15</p>
		</div>
		<article id="qcm">
			<div id="question">
				<h1></h1>
			</div>
			<div id="answer">
				<div id="repA"><p class="lettre">A: </p><p class="proposition"></p></div>
				<div id="repB"><p class="lettre">B: </p><p class="proposition"></p></div>
				<div id="repC"><p class="lettre">C: </p><p class="proposition"></p></div>
				<div id="repD"><p class="lettre">D: </p><p class="proposition"></p></div>
			</div>
		</article>
	</section>
	
	<section id="resultatSection">
		<article id="resultat">
			<h1>TOTAL DES GAINS</h1>
			<div id="sommeNet">
				<span class="somme"></span>
				<img src="img/Grolor_black_or.svg"/>
			</div>
			<div id="pointsNet">
				<span class="pointSpan"></span>
			</div>
		</article>
		<div id="buttonMenu">
			<button class="btn-classement">Classement</button>
			<button class="retourMenu">Retour au menu</button>
		</div>
	</section>
</main>

<aside id="menu">
	<article id="illustration">
		<?php include("img/Gromillion.svg"); ?>
	</article>

	<article>
		<a href="img/Règles de Gromillion.pdf" class="pdf" target="_blank"><button>Règles du jeu</button></a>
		<button class="paramBtn">EXPRESS : <span>NON</span></button>
		<div id="start">
			<a href="/"><button class="retour">GROLUDIK</button></a>
			<button class="commence">Commencer</button>
		</div>
	</article>	
</aside>

<aside id="abandonAside">
	<article>
		<h1>Voulez-vous repartir avec cette somme ?</h1>
		<div id="sommeBrut">
			<span></span>
			<img src="img/Grolor_black.svg"/>
		</div>
		<div>
			<button class="abandon-confirm">OUI</button>
			<button class="abandon-refus">NON</button>
		</div>
	</article>
</aside>

<aside id="tabScoreAside" class="cache">
	<i class="fas fa-times"></i>
	<ul id="tabScore">
		
	</ul>
</aside>
</body>
</html>