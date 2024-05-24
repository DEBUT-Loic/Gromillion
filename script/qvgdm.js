$(document).ready(function() {

// function randomize(tab) {
//     var i, j, tmp;
//     for (i = tab.length - 1; i > 0; i--) {
//         j = Math.floor(Math.random() * (i + 1));
//         tmp = tab[i];
//         tab[i] = tab[j];
//         tab[j] = tmp;
//     }
//     return tab;
// }

var choixQ, uniteDevise, audioTrans, test;
$.ajax({
	type:'GET',
	async:false,
	url:"php/choixQuestion.php",
	success:function(reponse) {
		choixQ=JSON.parse(reponse);
		// choixQ=randomize(choixQ);
	}
})

// POP-UP de début
var fileSon="sound/";
var expressed=false;
$(".paramBtn").click(function() {
	$("#settings").fadeIn("fast").css("display","flex").removeClass("cache");
})

$(".paramBtn").click(function() {
	if($(".paramBtn span").text()=="NON") {
		$(".paramBtn span").text("OUI");
		expressed=true;
		$("#illustration").prepend("<img class='expressImg' src='img/EXPRESS.svg'/>");
	}
	else {
		$(".paramBtn span").text("NON");
		expressed=false;
		$("#illustration img").remove();
	}
})

// Fin du POP-UP

var grolor,devise,jackpot,jackFranc,tabReponse,lettres,dom,timeOut,typeJoker,btnJoker,ttlGain,timeout,secondes;
var pause, ptsInterval, ptsSecondes, secondesAffiche, ptsChrono, ptsPalier, secChrono, tricheur;
var colorChrono="skyblue";

ptsChrono=0;

grolor=[600,1_200,2_500,5_000,10_000,20_000,40_000,80_000,125_000,250_000,500_000,1_000_000];

var randomNumbers = [];
for (let i = 0; i < 4; i++) {
    var randomNumber;
    // la boucle do { } while est plus intéressante ici car tu veux forcément rentrer au moins une fois dans la boucle
    do {
        randomNumber = Math.floor(Math.random() * 4); // je n'ai pas compris pourquoi tu avais fais un Math.floor sur max
    } while (randomNumbers.indexOf(randomNumber) !== -1);
    randomNumbers.push(randomNumber);
}

$("#question").children("h1").text(choixQ[1][0].question);

tabReponse=[choixQ[1][0].a,choixQ[1][0].b,choixQ[1][0].c,choixQ[1][0].d];
lettres=["a","b","c","d"];
var scale=0.9;

for (let i=0; i<$(".lettre").length; i++) {
	$(".proposition").eq(i).text(tabReponse[randomNumbers[i]]).attr("data-letter",lettres[randomNumbers[i]])
}

audio=new Audio(fileSon+"QVGDM_Q1-2.wav");
audio.volume=0.8
audio.loop=true
var timeDelay, ancienQ, chronoInterval, tempsReste;

secondes=16;
pause=false;
tempsReste=0;

$.ajax({
	type:'POST',
	async:false,
	data:{"panelQuestions":JSON.stringify(choixQ),"pasRep":"true","numQ":1},
	url:"php/resultat.php"
})

// Affichage classement bdd

var separate
$(".btn-classement").click(function() {
	$("#tabScoreAside").toggleClass("cache").fadeIn("fast").css("display","flex");
	let charPts;

	if(separate===undefined) {
		$(".points").each(function() {
			if($(this).text()>-2 && $(this).text()<2) {
				charPts=" pt";
			}
			else {
				charPts=" pts";
			}
			$(this).text(numStr($(this).text()," ")+charPts);
			separate=true;
		})
	}
	
	
	for(let i=0;i<$(".affichageScore").length;i++) {
		if($(".pseudo").eq(i).text()==$(".session").text()) {
			if(i==0) {
				$(".affichageScore").eq(i).css({background:"#C29B0C",color:"white"});
			}
			else if(i==1) {
				$(".affichageScore").eq(i).css({background:"#C0C0C0",color:"white"});
			}
			else if(i==2) {
				$(".affichageScore").eq(i).css({background:"#C49C48",color:"white"});
			}
			else {
				$(".affichageScore").eq(i).css({background:"#251178",color:"white"});
			}
		}
	}
	
	$(".rang").eq(0).children().text("er")
	
	$(".affichageScore").eq(0).addClass("premier");
	$(".affichageScore").eq(1).addClass("second");
	$(".affichageScore").eq(2).addClass("troiz");
	
	if($(".affichageScore").length<=10) {
		$("#scoreDernier").remove();
		var longAffichageScore=$(".affichageScore").length;
	}
	else {
		var longAffichageScore=10;
	}
	
	// $(".affichageScore").css("height",100/longAffichageScore+"%");

	$(".session").remove();
})

$("#tabScoreAside .fa-times").click(function() {
	$("#tabScoreAside").fadeOut("fast");
})

$(".commence").click(function() {
	$(this).attr("disabled","disabled");
	$("#menu").children().eq(1).css("display","none");
	$("#menu").toggleClass("aspiration");
	setTimeout(function() {
		$("#menu").css("display","none");
	},4000)
	$(".fa-gear").fadeOut(1);

	// $(window).blur(function() {
	// 	if(tricheur===undefined && $("#sommeNet span").text()=="" && !$("body").hasClass("stop")) {
	// 		tricheur=1;
	// 		wrong(tricheur);
	// 	}
	// })	

	if(expressed) {
		secTtl=secondes;
		if($(document).width()>756) {
			$("#chronoPortable").remove();
		}
		else {
			$("#chrono").remove();
		}
		timeout=setTimeout(function() {
			ptsSecondes=secondes*10;
			chronoInterval=setInterval(function() {
				if(!pause) {
					secondes-=0.01;
					conic=360/15*secondes;
					if(secondesAffiche<=10) {
						colorChrono="red";
					}
					$("#chronoProgress").css("animation","chronoPortableAnim 15s linear");
					$("#chronoBackground").css("background","conic-gradient("+colorChrono+" "+conic+"deg, black 0deg)");
					secondesAffiche=Math.ceil(secondes);
					ptsSecondes-=0.1;
				}
				if(secondesAffiche==10) {
					$("#pivot").css("animation","chronoAnim 10s linear infinite");
				}
				if(secondesAffiche==0) {
					secondes=0;
					ptsSecondes=0;
					if(tricheur!=1) {
						wrong();
					}
					clearInterval(chronoInterval);
					$("#pivot").css("animation-play-state","paused");
					$("#chronoProgress").css("animation-play-state","paused");
					$("#chrono").css({transform:"scale(0)",transition:"transform 1.5s"})
					$("#chronoPortable").css({transform:"scale(0)",transition:"transform 1.5s"})
					$("#chrono p").text("0");
					$(".pChronoPort").text("0");
				}
				if(ptsSecondes==0) {
					clearInterval(ptsInterval);
				}
				$("#chrono p").text(secondesAffiche);
				$(".pChronoPort").text(secondesAffiche);
			},10);
			clearTimeout(timeout);
			ptsSecondes=Math.ceil(ptsSecondes)
		},2900);
	}
	else {
		$("#pointsNet").remove();
		$(".btn-classement").remove();
		$("#chrono").remove();
		$("#chronoPortable").remove();
	}

	audioTrans=new Audio(fileSon+"QVGDM_Commence.wav")
	audioTrans.play()

	$("#pivot").delay(4000).fadeIn("fast");
	timeDelay=setTimeout(function() {
		audio.play()
		clearTimeout(timeDelay)
	},3000)

	devise=grolor.reverse();

	for(let i=0;i<$(".argentPyra").length;i++) {
		$(".argentPyra").eq(i).text(numStr(devise[i]," "));
	}
})

$("#joker").children("button").click(function() {
	if(!$(this).hasClass("abandon")) {
		pause=true;
		$("#pivot").css("animation-play-state","paused");
		$("#chronoProgress").css("animation-play-state","paused");
		$("#chronoBackground").css("animation-play-state","paused");
		btnJoker=$(this);
		$(this).attr("disabled","disabled")
		switch($(this).data("joker")) {
			case "50:50":
				$("body").addClass("stop")
				$(this).addClass("select");
				$("#joker").addClass("stop")

				for(let i=0;i<lettres.length;i++) {
					if(lettres[i]==choixQ[nbQuestion][0].reponse) {
						lettres.splice(i,1)
					}
				}
				lettres.splice(Math.floor(Math.random() * 3),1)
				$(".proposition").each(function() {
					for(let i=0;i<lettres.length;i++) {
						if($(this).data("letter")==lettres[i]) {
							$(this).delay(1500).fadeOut()
							$(this).siblings().delay(1500).fadeOut()
							$(this).parent().addClass("stop");
						}
					}
				})
				timeout=setTimeout(function() {
					btnJoker.addClass("used");
					$("#joker").removeClass("stop");
					$("body").removeClass("stop");
					pause=false;
					$("#pivot").css("animation-play-state","running");
					$("#chronoProgress").css("animation-play-state","running");
					$("#chronoBackground").css("animation-play-state","running");
					clearTimeout(timeout);
				},1500)
			break;
			case "X2":
				$(this).addClass("select");
				$("#joker").addClass("stop")
				typeJoker="X2";
			break;
			case "Switch":
				$("body").addClass("stop");
				$("#chronoPortable").fadeOut();
				typeJoker="Switch";
				$("#question").children().fadeOut();
				$("#answer > div").children().fadeOut();

				if(choixQ[nbQuestion].length>1) {
					choixQ[nbQuestion].splice(0,1)
					let rand=Math.floor(Math.random()*(choixQ[nbQuestion].length));
					let questSwitch=choixQ[nbQuestion].slice(rand,rand+1);
					choixQ[nbQuestion].splice(rand,1)
					choixQ[nbQuestion].splice(0,0,questSwitch[0])
				}
				else {
					var noQuestRep=choixQ[nbQuestion][0].id;
					choixQ[nbQuestion].splice(0,1);
					$.ajax({
						type:'POST',
						async:false,
						data:{"numQ":nbQuestion,"questions":JSON.stringify(choixQ),"idRep":noQuestRep},
						url:"php/choixQuestion.php",
						success:function(reponse) {
							choixQ=JSON.parse(reponse);
						}
					})
				}

				timedelay=setTimeout(function() {
					$("#chronoBackground").css("animation","none");
					$("#chronoProgress").css("animation","none");
					changement()
					pause=false;
					$("#pivot").css("animation","none");
					clearInterval(chronoInterval)
					clearTimeout(timedelay)
				},3000)
				
				$(this).addClass("stop")
				btnJoker.addClass("used");
			break;
		}
	}
	else {
		if($(".score .argentPyra").text()==="") {
				$("#abandonAside span").text("0");
		}
		else {
			$("#abandonAside span").text($(".score .argentPyra").text())
		}
		$("#abandonAside").fadeIn()
	}
	$(this).data("joker","")
})

$(".abandon-confirm").click(function() {
	choixQ[nbQuestion].splice(0,1);
	clearInterval(chronoInterval);
	$("#abandonAside").fadeOut("fast");
	$.ajax({
		type:'POST',
		async:false,
		data:{"panelQuestions":JSON.stringify(choixQ)},
		url:"php/resultat.php"
	})
	
	gain(0);
	$.ajax({
    	type:"post",
    	async:false,
    	data:{"point":gainChrono()},
    	url:"php/qvgdmBdd.php",
    	success:function(rep) {
    		
    		$("#tabScore").html(rep);
    	}
    })

	audioTrans.onended = function() {
		timeOut=setTimeout(function() {
			audioTrans=new Audio(fileSon+"GC_Fin.wav");
	  		audioTrans.volume=0.7
	  		audioTrans.play()	
		},750)
	};
	$("#pivot").addClass("rotation",250);
})

$(".abandon-refus").click(function() {
	$("#abandonAside").fadeOut()
})

var posScore=$(".numQuestion").length;
var nbQuestion=1;

$("#answer").children().click(function() {
	$("body").addClass("stop");
	$(this).addClass("select")
	switch(typeJoker) {
		case "X2":
			if($(this).children(".proposition").data("letter")==choixQ[nbQuestion][0].reponse) {
				clearInterval(chronoInterval);
				if(nbQuestion<12) {
					clearInterval(chronoInterval);
					pause=false;
					timeOut=setTimeout(function() {
						$("#pivot").css("animation","none");
						$("#chronoProgress").css("animation-play-state","paused");
						$("#chronoBackground").css("animation-play-state","paused");
						$("#chronoPortable").fadeOut();
					},3000)
					correct($(this));
					choixQ[nbQuestion].splice(0,1);
				}
				else {
					if($(this).children(".proposition").data("letter")==choixQ[nbQuestion][0].reponse) {
						clearInterval(chronoInterval);
						pause=false;
						timeOut=setTimeout(function() {
							$("#pivot").css("animation","none");
						},3000)
						choixQ[nbQuestion].splice(0,1);
						gain(1);
						$.ajax({
    						type:"post",
    						async:false,
    						data:{"point":gainChrono(1)},
    						url:"php/qvgdmBdd.php",
    						success:function(rep) {
    							
    							$("#tabScore").html(rep);
    						}
    					})
					}
					else {
						choixQ[nbQuestion].splice(0,1);
						timedelay=setTimeout(function() {
							audio.pause();
							audio.currentTime=0;
							$("#pivot").css("animation-play-state","running");
							$("#chronoProgress").css("animation-play-state","running");
							$("#chronoBackground").css("animation-play-state","running");
							clearTimeout(timedelay)
						},3000)
						audioTrans=new Audio(fileSon+"GC_Incorrect.wav");
						timeDelay=setTimeout(function() {
							audioTrans.volume=0.7
							audioTrans.play()
							audioTrans.onended=function() {
								timeOut=setTimeout(function() {
									audioTrans=new Audio(fileSon+"GC_Fin.wav");
									audioTrans.volume=0.7
									audioTrans.play()
									clearTimeout(timeOut);
								},750)								
							};
							clearTimeout(audioTrans)
						},3250)
						gain(-1);
						$.ajax({
    						type:"post",
    						async:false,
    						data:{"point":gainChrono(-1)},
    						url:"php/qvgdmBdd.php",
    						success:function(rep) {
    							$("#tabScore").html(rep);
    						}
    					})
					}
					timeOut=setTimeout(function() {
						$.ajax({
							type:'POST',
							async:false,
							data:{"panelQuestions":JSON.stringify(choixQ)},
							url:"php/resultat.php"
						})
						$("#pivot").addClass("rotation",250);
					},3000)
				}
			}
			else {
				$(this).children().delay(3000).fadeOut()
				dom=$(this)
				timeOut=setTimeout(function() {
					dom.removeClass("select");
					dom.addClass("stop")
					$("body").removeClass("stop");
					pause=false
					$("#pivot").css("animation-play-state","running");
					$("#chronoProgress").css("animation-play-state","running");
					$("#chronoBackground").css("animation-play-state","running");
					clearTimeout(timeOut)
				},3500)
			}
			btnJoker.addClass("used");
		break;
		default:
			clearInterval(chronoInterval);
			$("#pivot").css("animation","none");
			$("#chronoProgress").css("animation-play-state","paused");
			$("#chronoBackground").css("animation-play-state","paused");
			$("#chronoPortable").fadeOut();
			$("#answer").removeClass("stop")
			if(nbQuestion<12) {
				if($(this).children(".proposition").data("letter")==choixQ[nbQuestion][0].reponse) {
					choixQ[nbQuestion].splice(0,1);
					correct($(this));
				}
				else {
					wrong($(this));
				}
			}
			else {
				if($(this).children(".proposition").data("letter")==choixQ[nbQuestion][0].reponse) {
					choixQ[nbQuestion].splice(0,1);
					gain(1);
					$.ajax({
    					type:"post",
    					async:false,
    					data:{"point":gainChrono(1)},
    					url:"php/qvgdmBdd.php",
    					success:function(rep) {
    						$("#tabScore").html(rep);
    					}
    				})
				}
				else {
					choixQ[nbQuestion].splice(0,1);
					timedelay=setTimeout(function() {
						audio.pause();
						audio.currentTime=0;
						clearTimeout(timedelay)
					},3000)
					audioTrans=new Audio(fileSon+"GC_Incorrect.wav");
					timeDelay=setTimeout(function() {
						audioTrans.volume=0.7
						audioTrans.play()
						audioTrans.onended=function() {
							timeOut=setTimeout(function() {
								audioTrans=new Audio(fileSon+"GC_Fin.wav");
								audioTrans.volume=0.7
								audioTrans.play()
								clearTimeout(timeOut);
							},750)
						};
						clearTimeout(audioTrans)
					},3250)
					gain(-1);
					$.ajax({
    					type:"post",
    					async:false,
    					data:{"point":gainChrono(-1)},
    					url:"php/qvgdmBdd.php",
    					success:function(rep) {
    						$("#tabScore").html(rep);
    					}
    				})
				}
				timeOut=setTimeout(function() {
					$.ajax({
						type:'POST',
						async:false,
						data:{"panelQuestions":JSON.stringify(choixQ)},
						url:"php/resultat.php"
					})
					$("#pivot").addClass("rotation",250);
				},3000)
			}
	}
	typeJoker=undefined;
})

$(".retourMenu").click(function() {
	location.reload();
})

var plusDeTps=0;
ancienQ=[];
ptsPalier=0;

function correct(reponse) {
	posScore--;
	tempsReste+=secondes;
	ptsSecondes=Math.ceil(ptsSecondes);
	ptsChrono+=ptsSecondes;
	if(posScore==10 || posScore==5) {
		ptsPalier=ptsChrono;
	}

	$("#joker").removeClass("stop");
	$("#answer > div").removeClass("stop");

	audio.loop=true
	if(posScore<5) {
		audioTrans=new Audio(fileSon+"GC_Manche 1_correct.wav")
		plusDeTps=1000
	}
	else if(posScore<10) {
		audioTrans=new Audio(fileSon+"GC_Manche 3_correct.wav")
		plusDeTps=1000
	}
	else {
		audioTrans=new Audio(fileSon+"QVGDM_correct_manche 1.wav")
	}

	if(posScore==5 || posScore==10) {
		timeDelay=setTimeout(function() {
			audio.pause();
			audio.currentTime=0;
			clearTimeout(timeDelay)
		},3000)
		audioTrans=new Audio(fileSon+"GC_Round Indent.wav");
	}

	dom=reponse;
	timeOut=setTimeout(function() {
		dom.addClass("correct");
		audio.volume=0.2
		audioTrans.volume=0.6
		audioTrans.play();

		if(nbQuestion<3) {
			timeout=setTimeout(function() {
				audio.volume=0.8
				clearTimeout(timeout)
			},audioTrans.duration*1000)
		}

		$.ajax({
			type:'POST',
			async:false,
			data:{"panelQuestions":JSON.stringify(choixQ)},
			url:"php/resultat.php"
		})

		// audio.loop = true
		$("#answer > div").children().delay(4000+plusDeTps).fadeOut();
		$("#question").children().delay(4000+plusDeTps).fadeOut();
		$("#chrono").children().delay(4000+plusDeTps).fadeOut();
		$("#chrono").delay(4000+plusDeTps).fadeTo("normal",0);
		clearTimeout(timeOut);
		timeOut=setTimeout(function() {
			dom.removeClass("select").removeClass("correct");
			clearTimeout(timeOut);
		},4000+plusDeTps)
	},3000)

	timeout=setTimeout(function() {
		changement()
		clearTimeout(timeout);
	},8000+plusDeTps)
}

function wrong(badRep) {
	if(badRep!=undefined && !Number.isInteger(badRep)) {
		timeDelay=setTimeout(function() {
			audio.pause();
			audio.currentTime=0;
			clearTimeout(timeDelay)
		},3000)
		plusDeTps=6000
	}
	else {
		audio.pause();
		audio.currentTime=0;
		clearTimeout(timeDelay);
		plusDeTps=3000;
	}
	
	audioTrans=new Audio(fileSon+"GC_Incorrect.wav");

	$(".lettre").each(function() {
		if($(this).siblings().data("letter")==choixQ[nbQuestion][0].reponse) {
			dom=$(this);
			if(badRep!=undefined && !Number.isInteger(badRep)) {
				plusDeTps=6000
				timeout=setTimeout(function() {
					dom.parent().addClass("correct");
					audioTrans.play();
					clearTimeout(timeout);
				},3000);
			}
			else {
				if(nbQuestion<12 && !Number.isInteger(badRep)) {
					dom.parent().addClass("correct");
				}
				audioTrans.play();
				clearTimeout(timeout);
				plusDeTps=3000;
			}
		}
	})

	choixQ[nbQuestion].splice(0,1);

	timeOut=setTimeout(function() {
		$.ajax({
			type:'POST',
			async:false,
			data:{"panelQuestions":JSON.stringify(choixQ)},
			url:"php/resultat.php"
		})
		gain(-1);
		$.ajax({
    		type:"post",
    		async:false,
    		data:{"point":gainChrono(-1)},
    		url:"php/qvgdmBdd.php",
    		success:function(rep) {
    			$("#tabScore").html(rep);
    		}
    	})
		audioTrans=new Audio(fileSon+"GC_Fin.wav");

		audioTrans.volume=0.7
		timeDelay=setTimeout(function() {
			audioTrans.play()
			clearTimeout(audioTrans)
		},500)
		$("#pivot").addClass("rotation",250);
		clearTimeout(timeOut)
	},plusDeTps)
}



function changement() {
	if(typeJoker!="Switch") {
		$(".score img").attr("src","img/Grolor_gras_orange.svg");
		$(".score#palier img").attr("src","img/Grolor_gras_blanc.svg");
		$("#pyramide").children("div").removeClass("score");

		$("#pyramide").children("div").eq(posScore).addClass("score");
		$(".score img").attr("src","img/Grolor_black.svg");
		$(".numQuestion").eq(posScore).append("<i class='fa-solid fa-check'></i>");
		nbQuestion++;
	}
	if(nbQuestion>=3) {
		audio.pause()
		audio=null
		audio=new Audio(fileSon+"QVGDM_Q"+nbQuestion+"_music.wav");
		audio.volume=0.8
		audio.loop=true
		audio.play()		
	}
	randomNumbers = [];
	for (let i = 0; i < 4; i++) {
	    var randomNumber;
	    // la boucle do { } while est plus intéressante ici car tu veux forcément rentrer au moins une fois dans la boucle
	    do {
	        randomNumber = Math.floor(Math.random() * 4); // je n'ai pas compris pourquoi tu avais fais un Math.floor sur max
	    } while (randomNumbers.indexOf(randomNumber) !== -1);
	    randomNumbers.push(randomNumber);
	}
	colorChrono="skyblue";
	if(nbQuestion>7) {
		$("body").css("background-image","radial-gradient(#03224c, #0d1428)");
		$("#question").css({"border-color":"#c0c0c0"})
		$("#answer > div").css({"border-color":"#c0c0c0"})
		$("#pyramide").css({"border-color":"#c0c0c0"})
		colorChrono="#c0c0c0";
// linear-gradient(-90deg, #03224c, #060812, #03224c)
	}
	else if(nbQuestion>2) {
		$("body").css("background-image","radial-gradient(#0131b4, #222870)");
		$("#question").css({"border-color":"#cd7f32"})
		$("#answer > div").css({"border-color":"#cd7f32"})
		$("#pyramide").css({"border-color":"#cd7f32"})
		colorChrono="#cd7f32";
	}
// linear-gradient(-90deg, #1f3fc3, #222870, #1f3fc3)
	if(nbQuestion==12) {
		$("body").css("background-image","radial-gradient(#121212, black)");
		$("#question").css({"border-color":"#d4af37"})
		$("#answer > div").css({"border-color":"#d4af37"})
		$("#pyramide").css({"border-color":"#d4af37"})
		colorChrono="#d4af37";
	}
	
	$("#question").children("h1").text(choixQ[nbQuestion][0].question);

	$("#question").css("padding","0 10px")

	if(nbQuestion<=2) {
		secondes=15;
	}
	else if (nbQuestion<=7) {
		secondes=30;
	}
	else if (nbQuestion<=11) {
		secondes=45;
	}
	else {
		secondes=45+Math.ceil(tempsReste);
	}

	$("#chrono p").text(secondes);
	$(".pChronoPort").text(secondes);

	tabReponse=[choixQ[nbQuestion][0].a,choixQ[nbQuestion][0].b,choixQ[nbQuestion][0].c,choixQ[nbQuestion][0].d];
	lettres=["a","b","c","d"];
	for (let i=0; i<$(".lettre").length; i++) {
		$(".proposition").eq(i).text(tabReponse[randomNumbers[i]]).data("letter",lettres[randomNumbers[i]])
	}

	$("#question").children().delay(2000).fadeIn();
	$("#answer > div").children().delay(2000).fadeIn();
	$("#chrono").children().delay(2000).fadeIn();
	$("#chrono").delay(2000).fadeTo("normal",1);

	$.ajax({
		type:'POST',
		async:false,
		data:{"panelQuestions":JSON.stringify(choixQ),"pasRep":"true","numQ":nbQuestion},
		url:"php/resultat.php"
	})

	if(expressed==true) {
		secTtl=secondes;
		timeOut=setTimeout(function() {
			$("body").removeClass("stop");
			$("#chronoProgress").css("animation-play-state","running");
			$("#chronoBackground").css("animation-play-state","running");
			$("#chronoProgress").css("animation","chronoPortableAnim "+secondes+"s linear");

			$("#chronoPortable").fadeIn();
			ptsSecondes=secondes*10;
			chronoInterval=setInterval(function() {
				if(!pause) {
					secondes-=0.01;
					secondesAffiche=Math.ceil(secondes);
					conic=360/secTtl*secondes;
					if(secondesAffiche<=10) {
						colorChrono="red";
					}
					$("#chronoBackground").css("background","conic-gradient("+colorChrono+" "+conic+"deg, black 0deg)");
					ptsSecondes-=0.1;
				}
				if(secondesAffiche==10) {
					$("#pivot").css("animation","chronoAnim 10s linear infinite");
				}
				if(secondesAffiche==0) {
					secondes=0;
					ptsSecondes=0;
					wrong();
					clearInterval(chronoInterval);
					$("#pivot").css("animation-play-state","paused");
					$("#chronoProgress").css("animation-play-state","paused");
					$("#chrono").css({transform:"scale(0)",transition:"transform 0.5s"})
					$("#chronoPortable").css({transform:"scale(0)",transition:"transform 0.5s"})
					$("#chrono p").text("0");
					$(".pChronoPort").text("0");
				}
				if(ptsSecondes==0) {
					clearInterval(ptsInterval);
				}
				if(secondes>=60) {
					let newSec;
					Math.floor(secondes%60)<10 ? newSec="0"+Math.floor(secondes%60) : newSec=Math.floor(secondes%60)
					$("#chrono p").text(Math.floor(secondes/60)+":"+newSec);
					$(".pChronoPort").text(Math.floor(secondes/60)+":"+newSec);
				}
				else {
					$("#chrono p").text(secondesAffiche);
					$(".pChronoPort").text(secondesAffiche);
				}
			},10)
		},2000)
	}
	else {
		timeOut=setTimeout(function() {
			$("body").removeClass("stop");
		},2000)
	}
}

function gain(niveau) {
	switch(niveau) {
		case -1:
			if(posScore<=5) {
				ttlGain=devise[5];
			}
			else if(posScore<=10) {
				ttlGain=devise[10];
			}
			else {
				ttlGain=0;
			}
		break;
		case 0:
			if(posScore==12) {
				ttlGain=0;
			}
			else {
				ttlGain=devise[posScore];
			}
			audioTrans=new Audio(fileSon+"GC_Abandon.wav");
			audio.pause();
			audio.currentTime=0;
			timedelay=setTimeout(function() {
				audioTrans.play()
				clearTimeout(timedelay)
			},500)
		break;
		case 1:
			ttlGain=devise[0];
			audioTrans=new Audio(fileSon+"GC_Winner.wav");
			timeDelay=setTimeout(function() {
				audio.pause();
				audio.currentTime=0;
				timedelay=setTimeout(function() {
					audioTrans.play()
					audioTrans.onended=function() {
						timeOut=setTimeout(function() {
							audioTrans=new Audio(fileSon+"GC_Fin.wav");
							audioTrans.volume=0.7
							audioTrans.play()
							clearTimeout(timeOut);
						},750)	
					}
					clearTimeout(timedelay)
				},500)
				clearTimeout(timeDelay)
			},3000)
			$("#resultatSection").css({backgroundImage:"url('style/feux-artifice.gif'), linear-gradient(-45deg, #0131b4, #03224c)",backgroundSize:"100% 100%"})
		break;
	}

	$("#sommeNet span").text(numStr(ttlGain," "));

	if(ttlGain>=1000000) {
		$("#sommeNet").css("border-color","#d4af37");
	}
	else if(ttlGain>=40000) {
		$("#sommeNet").css("border-color","#c0c0c0");
	}
	else if(ttlGain>=1200) {
		$("#sommeNet").css("border-color","#cd7f32");
	}

	$("body").removeClass("stop");

	return ttlGain;
}

function gainChrono(niveau) {
	let ptsMalus=0;

	switch(niveau) {
		case 1:
			ptsSecondes=Math.ceil(ptsSecondes)
			ptsChrono+=ptsSecondes;
		break;
		case -1:
			if(posScore!=10 || posScore!=5) {
				ptsChrono=ptsPalier+Math.round(ptsChrono/4);
			}
			else {
				ptsChrono=ptsPalier;
			}
			ptsMalus=5*(12-posScore);
		break;
	}

	let ptsSomme=ttlGain/100;
	let ptsJoker=[0,10,30,70];
	let ptsTtl=ptsSomme+ptsChrono-ptsMalus-ptsJoker[$("#joker").children(".used").length];

	if(ptsTtl>-2 && ptsTtl<2) {
		$("#pointsNet span").text(numStr(ptsTtl," ")+" pt");
	}
	else {
		$("#pointsNet span").text(numStr(ptsTtl," ")+" pts");
	}

	return ptsTtl;
}

})