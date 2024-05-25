<?php
session_start();
include "../../parametres/START_BDD.php";

$point=$_POST["point"];

if(isset($_SESSION["compte"])) {
	$r=$bdd->prepare("SELECT COUNT(*),points FROM nummorum_classement WHERE pseudo=?");
	$r->execute(array($_SESSION["compte"]));
	$record=$r->fetch(PDO::FETCH_ASSOC);
	$compte=$_SESSION["compte"];
}
else {
	$compte="";
}
echo '<p class="session" style="display:none;">'.$compte.'</p>';
if(isset($record)) {
	if($record["COUNT(*)"]==0) {
		$req=$bdd->prepare("INSERT INTO nummorum_classement VALUES ('',?,?)");
		$req->execute(array($_SESSION["compte"],$point));
		$req->closeCursor();
	}
	else if($point>$record["points"]) {
		$req=$bdd->prepare("UPDATE nummorum_classement SET points=? WHERE pseudo=?");
		$req->execute(array($point,$_SESSION["compte"]));
		$req->closeCursor();
	}
}

$i=1;
$requete=$bdd->prepare("SELECT pseudo,points FROM nummorum_classement ORDER BY points DESC LIMIT 10");
$requete->execute();
$donnees=$requete->fetchAll(PDO::FETCH_ASSOC);
foreach ($donnees as $tableau) { ?>
	<li class="affichageScore">
		<div class="itemLeft">
			<p class="rang"><?php echo $i; ?><span>e</span></p>
			<?php if(strlen($tableau["pseudo"])>=26) { ?>
			<p class="pseudo"><?php echo substr($tableau["pseudo"], 0, 26)."..."; ?></p>
			<?php } else { ?>
			<p class="pseudo"><?php echo $tableau["pseudo"]; ?></p>
			<?php } ?>
		</div>
		<p class="points"><?php echo number_format($tableau["points"],0,","," "); ?></p>
	</li>
<?php $i++; } $requete->closeCursor(); ?>
<?php
$i=1;
$requete=$bdd->prepare("SELECT pseudo,points FROM nummorum_classement ORDER BY points DESC");
$requete->execute();
$donnees=$requete->fetchAll(PDO::FETCH_ASSOC);

foreach ($donnees as $tableau) {
	if($tableau["pseudo"]==$compte) {
		echo '<div id="scoreDernier" class="affichageScore" style="display:none;">
			  	<p class="rang">'.$i.'<span>e</span></p>
			  	<p class="pseudo">'.$tableau["pseudo"].'</p>
			  	<p class="points">'.$tableau["points"].'</p>
			 </div>';
	}
	$i++;
}
?>