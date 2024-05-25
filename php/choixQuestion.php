<?php
include "../../parametres/START_BDD.php";
session_start();

function uniq_rand($min,$max,$tab) {
    do $rand=rand($min,$max); while(in_array($rand,$tab));
    return $rand;
}
// echo $_SESSION["ttlQuestions"];
// unset($_SESSION["ttlQuestions"]);
// unset($_SESSION["panelQuestions"]);
if(!isset($_SESSION["ttlQuestions"])) {
	$req=$bdd->prepare("SELECT COUNT(*) FROM nummorum");
	$req->execute();
	$ttlQuestions=$req->fetch(PDO::FETCH_ASSOC);
	$_SESSION["ttlQuestions"]=$ttlQuestions["COUNT(*)"];
	$req->closeCursor();
}
else {
	$req=$bdd->prepare("SELECT COUNT(*) FROM nummorum");
	$req->execute();
	$ttlQuestions=$req->fetch(PDO::FETCH_ASSOC);

	if($_SESSION["ttlQuestions"]!=$ttlQuestions["COUNT(*)"]) {
		for($i=$_SESSION["ttlQuestions"]+1;$i<=$ttlQuestions["COUNT(*)"];$i++) {
			$r=$bdd->prepare("SELECT * FROM nummorum WHERE id=".$i);
			$r->execute();
			$newQ=$r->fetch(PDO::FETCH_ASSOC);
			for($j=1;$j<=12;$j++) {
				if($newQ["numQuestion"]==$j) {
					$_SESSION["panelQuestions"][$j][sizeof($_SESSION["panelQuestions"][$j])]=$newQ;
				}
			}
		}
	}
}


$quiz=array();

if(!isset($_SESSION["panelQuestions"])) {
	// echo "notSession";
	for ($i=1; $i<=12; $i++) {
		$req=$bdd->prepare("SELECT * FROM nummorum WHERE numQuestion=".$i);
		$req->execute();
		$question=$req->fetchAll(PDO::FETCH_ASSOC);

		$image=array();
		for($k=0;$k<count($question);$k++) {
		    $image[$k]=uniq_rand(0,count($question)-1,$image);
		    $quiz[$i][$k]=$question[$image[$k]];
		}
	}
}
else {
	// echo "yesSession";
	for($i=1;$i<=12;$i++) {
		if(sizeof($_SESSION["panelQuestions"][$i])==0) {
			$req=$bdd->prepare("SELECT * FROM nummorum WHERE numQuestion=".$i);
			$req->execute();
			$question=$req->fetchAll(PDO::FETCH_ASSOC);

			$image=array();
			for($k=0;$k<count($question);$k++) {
			    $image[$k]=uniq_rand(0,count($question)-1,$image);
			    $_SESSION["panelQuestions"][$i][$k]=$question[$image[$k]];
			}
		}
	}
	$quiz=$_SESSION["panelQuestions"];
}

if(isset($_POST["numQ"])) {
	$quiz=json_decode($_POST["questions"], true);
	$req=$bdd->prepare("SELECT * FROM nummorum WHERE numQuestion=".$_POST["numQ"]);
	$req->execute();
	$question=$req->fetchAll(PDO::FETCH_ASSOC);

	$image=array();
	for($k=0;$k<count($question);$k++) {
		if($k==0) {
			$image[0]=uniq_rand(0,count($question)-1,$image);
			while($question[$image[0]]["id"]==$_POST["idRep"]) {
				$image[0]="";
				$image[0]=uniq_rand(0,count($question)-1,$image);
			}
			$quiz[$_POST["numQ"]][$k]=$question[$image[0]];
		}
	    $image[$k]=uniq_rand(0,count($question)-1,$image);
	    $quiz[$_POST["numQ"]][$k]=$question[$image[$k]];
	}
}
// print_r($quiz);
echo json_encode($quiz);
?>