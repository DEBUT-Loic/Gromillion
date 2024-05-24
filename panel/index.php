<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> Gromillion - Questionnaire </title>
	<link rel="stylesheet" type="text/css" href="../../style/font.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.3.0/css/all.min.css"/>
	<link rel="icon" href="../img/Gromillion.svg">
	<style>
		* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
			font-size: 1.5rem;
		}
		body {
			text-align: center;
			background: radial-gradient(#333,#000);
			overflow-y: hidden;
		}
		h1 {
			margin-top: 1vh;
		}
		i {
			color: white;
			position: absolute;
			right: 0;
			top: 0;
			margin: 1vh 2vh 0 0;
			border-radius: 50px;
			padding: 5px 7px;
			background: black;
			transform-origin: top right;
			transition: transform .5s;
		}
		i:hover {
			cursor: pointer;
			transform: scale(1.5);
		}
		i.fa-times {
			z-index: 1000;
		}
		form {
			width: 100%;
			height: calc(100vh - 50px);
			display: flex;
			flex-direction: column;
			justify-content: space-evenly;
			align-items: center;
		}
		div {
			text-align: center;
			width: 100%;
		}
		label, h1 {
			font-family: "Agency_gras";
			color: white;
		}
		input {
			font-family: "LexendM";
			font-size: 1rem;
		}
		input[name*="rep"] {
			margin-bottom: 20px;
			padding-left: 5px;
			font-family: "LexendM";
			
		}
		input[name*="rep"]::first-lette {
			text-transform: capitalize;
		}
		input[type="text"],input[type="number"] {
			width: 60%;
			border: 3px solid skyblue;
			background: black;
			color: white;
			padding: 5px 10px;
			border-radius: 5px;
		}
		input[type="number"] {
			width: auto;
			text-align: center;
			padding: 5px 0;
		}
		#question {
			width: 74%;
			text-align: center;
			font-size: 1.75rem;
		}
		input[type="radio"] {
			transform: scale(2);
    		accent-color: green;
    		margin-left: 5px;
		}
		#button {
			border-radius: 50%;
			font-size: 1.5rem;
			padding: 15px;
			border: 2px solid skyblue;
			background: black;
			color: white;
			transition: color 0.3s, background 0.3s;
			cursor: pointer;
		}
		#button:hover {
			background: #faea73;
			color: black;
		}
		input[type=number]::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		}
		small {		
			margin: 18px auto;
			padding: 10px 0;
			width: 100%;
		}
		#popUp-stat {
			display: none;
			position: absolute;
			top: 0;
			left: 0;
			width: 100vw;
			height: 100vh;
			background: rgba(0, 0, 0, 0.75);
			font-family: "Agency_gras";
			text-align: left;
		}
		#ttlQ, #ttlQ span {
			background: skyblue;
			display: inline;
			font-size: 1.5rem;
			margin: 0;
			background: -webkit-linear-gradient(#b88b33 19.5%, #e8d3a4 45%, #b88b33 72.3%, #e8d3a4 92.7%, #b88b33);
   			-webkit-background-clip: text;
   			-webkit-text-fill-color: transparent;
		}
		#stat {
			background: white;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
			width: 90%;
			height: 95%;
			display: flex;
			justify-content: space-between;
		}
		#stat > article {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: flex-end;
			height: 100%;
			padding: 0 20px;
		}
		#stat div {
			height: 100%;
			background: skyblue;
			display: flex;
			align-items: center;
		}
		.good {
			color: green;
			border: 1px solid green;
			background: #e7ffde;
		}
		.bad {
			color: red;
			border: 1px solid red;
			background: #FFCCCB;
		}

		@media all and (max-width: 500px) {
			* {
				font-size: 1rem;
			}
			form {
				justify-content: space-between;
			}
			#ttlQ, #ttlQ span {
				font-size: 1rem;
			}
			#question {
				width: 95%;
				font-size: 1.2rem;
			}
			input[type="text"],input[type="number"] {
				border-width: 2px;
			}
			input[type="radio"] {
				transform: scale(1);
			}
			#reponses input {
				font-size: 0.8rem;
			}
			#stat {
				width: 95%;
			}
			#stat > article {
				padding: 0;
			}
			i.fa-times {
				transform: none;
			}
			i.fa-chart-bar {
				top: auto;
				bottom: 0;
				margin: 0 1vh 1vh 0;
				transform: none;
			}
		}
	</style>
</head>
<body>
<div>
	<h1>Questionnaire pour le jeu Gromillion</h1>
	<h1 id="ttlQ"><span></span> questions</h1>
</div>
<form id="quiz" action="save.php" method="post">
	<i class="far fa-chart-bar"></i>
	<div>
		<label for="numQuest">Numéro de question</label><br/>
		<input type="number" name="numQuest" id="numQuest" min="1" max="12" autofocus required>
	</div>

	<div>
		<label for="question">Question</label><br/>
		<input type="text" name="question" id="question" class="champ" required>
	</div>

	<div id="reponses">
		<div>
			<label for="repA">Réponse A</label>
			<input type="text" name="repA" id="repA" class="champ" required>
			<input type="radio" name="rep" value="a" required>
		</div>
		<div>
			<label for="repB">Réponse B</label>
			<input type="text" name="repB" id="repB" class="champ" required>
			<input type="radio" name="rep" value="b" required>
		</div>
		<div>
			<label for="repC">Réponse C</label>
			<input type="text" name="repC" id="repC" class="champ" required>
			<input type="radio" name="rep" value="c" required>
		</div>
		<div>
			<label for="repD">Réponse D</label>
			<input type="text" name="repD" id="repD" class="champ" required>
			<input type="radio" name="rep" value="d" required>
		</div>
	</div>
	
	<input type="submit" id="button" form="quiz">
</form>

<aside id="popUp-stat">
	<i class="fas fa-times"></i>
	<section id='stat'>
	</section>
</aside>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script src="../script/milliers.js"></script>
<script src="RainbowVis/rainbowvis.js"></script>
<script type="text/javascript">
var save="<?php if(isset($_SESSION['save'])) {echo $_SESSION['save'];} else {echo 'false';} ?>";
var tabStat;

if(save!="false") {
	alert("La question a bien été enregistrée");
}

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

$(".champ").keyup(function() {
	$(this).val(capitalizeFirstLetter($(this).val()))
})

$("i.fa-chart-bar").click(function() {
	$("#popUp-stat").fadeIn("fast");
})

$("i.fa-times").click(function() {
	$("#popUp-stat").fadeOut("fast");
})

$.ajax({
	type:'POST',
	async:false,
	url:"ajaxStat.php",
	success:function(reponse) {
		tabStat=JSON.parse(reponse);
	}
})

var max = tabStat.reduce(function(a,b) {
	return Math.max(a, b);
});

var rainbow = new Rainbow();
numberOfItems=Math.ceil(max/10)*10;
rainbow.setNumberRange(1, numberOfItems);
rainbow.setSpectrum('skyblue',"#cd7f32","#c0c0c0",'#d4af37');
var s=[];
for (var i=1; i<=numberOfItems; i++) {
	var hexColour = rainbow.colourAt(i);
	s[i-1]='#'+hexColour;
}

var ttlQuestion=0;

for(let i=0;i<tabStat.length;i++) {
	$("#stat").append("<article> <div>"+tabStat[i]+"</div>"+(i+1)+" </article>")
	$("#stat div").eq(i).css({"height":parseInt($("#stat div").eq(i).text())/(Math.ceil(max/10)*10)*100+"%","background":s[parseInt($("#stat div").eq(i).text())],"padding":"0 5px"})
	ttlQuestion+=parseInt($("#stat div").eq(i).text());
}

$("#ttlQ").children("span").text(numStr(ttlQuestion," "))
</script>
</body>
</html>
<?php
unset($_SESSION["save"]);
?>