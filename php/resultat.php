<?php 
session_start();
if(!empty($_POST)) {
	$_SESSION['panelQuestions']=json_decode($_POST["panelQuestions"],true);

	if(isset($_POST['pasRep'])) {
		array_shift($_SESSION['panelQuestions'][$_POST['numQ']][0]);
		array_splice($_SESSION['panelQuestions'][$_POST['numQ']],0,1);
	}
}
?>