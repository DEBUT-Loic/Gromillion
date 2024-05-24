<?php
session_start();
include "../../parametres/START_BDD.php";
$tab=array();
for($i=1;$i<13;$i++) {
	$req=$bdd->prepare("SELECT count(*) FROM nummorum WHERE numQuestion=?");
	$req->execute(array($i));
	$donnee=$req->fetch(PDO::FETCH_ASSOC);
	$tab[$i-1]=$donnee["count(*)"];
}

echo json_encode($tab);
?>