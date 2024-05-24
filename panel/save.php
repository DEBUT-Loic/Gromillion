<?php
session_start();
include "../../parametres/START_BDD.php";

foreach ($_POST as $key => $value) {
	if($key=="rep") {
		$save=htmlentities($value);
		unset($_POST["rep"]);
	}
	else {
		$value=htmlentities($value);
	}
}

$_POST["rep"]=$save;
$tab=array();

foreach ($_POST as $indice=>$valeur) {
  array_push($tab, $valeur);
}

$req=$bdd->prepare("INSERT INTO nummorum VALUES ('',?,?,?,?,?,?,?)");
if($req->execute($tab)) {
	$_SESSION['save']="true";
}
else {
	$_SESSION['save']="false";
}
$req->closeCursor();
header("Location: index.php");
?>