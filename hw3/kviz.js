var i=0;     //podesavanje promenljivih
var ime = " ";
var tacniOdgovori = 0;
var tajmer = 20;
var zaustavljanjeTajmera = 1;

document.getElementById("quiz").style.display="none";
document.getElementById("result").style.display="none";

function start(){
    setTimeout(function(){
    document.getElementById("quiz").style.display="inline";
    document.getElementById("name").style.display="none";
    document.getElementById("start").style.display="none";
    document.getElementById("inputAnswer").style.display="none";
    document.getElementById("odg").style.display="none";
    document.getElementById("timer").style.display="inline";
    ucitaj(0);
    zapocniVreme();
    ime=document.getElementById('name').value;
}, 1500);
}

function ucitaj(broj){
    if ((i+1)!=3 && (i+1)!=5 && (i+1)!=8){
        document.getElementById("questionText").innerHTML=pitanja[broj].pitanje;
        document.getElementById("odgovor11").innerHTML=pitanja[broj].opc1;
        document.getElementById("odgovor22").innerHTML=pitanja[broj].opc2;
        document.getElementById("odgovor33").innerHTML=pitanja[broj].opc3;
        document.getElementById("odgovor44").innerHTML=pitanja[broj].opc4;
        document.getElementById("name").style.display="none";
        document.getElementById("start").style.display="none";
        document.getElementById("inputAnswer").style.display="none";
        document.getElementById("odg").style.display="none";
        document.getElementById("dugmad").style.display="inline";
    }
    else{
        document.getElementById("questionText").innerHTML=pitanja[broj].pitanje;
        document.getElementById("inputAnswer").style.display="inline";
        document.getElementById("odg").style.display="inline";
        document.getElementById("dugmad").style.display="none";
    }
}

function proveraDugme(){
    if ((i+1)!=3 && (i+1)!=5 && (i+1)!=8 && i<10){
        if (pitanja[i].odgovor==1){
            document.getElementById("odgovor1").style.backgroundColor = "green";
            tacniOdgovori++;
        }
        if (pitanja[i].odgovor==2){
            document.getElementById("odgovor2").style.backgroundColor = "green";
            tacniOdgovori++;
        }
        if (pitanja[i].odgovor==3){
            document.getElementById("odgovor3").style.backgroundColor = "green";
            tacniOdgovori++;
        }
        if (pitanja[i].odgovor==4){
            document.getElementById("odgovor4").style.backgroundColor = "green";
            tacniOdgovori++;
        }
    }
    else {
        if(document.getElementById('inputAnswer').value.toUpperCase() == pitanja[i].odgovor.toUpperCase()){
            alert("Odgovor je tacan!")
            tacniOdgovori++;
        }
        else{
            alert("Odgovor je netacan!")
        }
        }
    zaustavljanjeTajmera=0;
    tajmer = 20;
    setTimeout(function(){
        if (i>10){
            odustani()
        }
        else{
            zaustavljanjeTajmera=1;
            document.getElementById("timer").style.display="inline";
        }
        i++;
        ucitaj(i);
        ocisti();
        
       
    },3000)
}
function ocisti(){
	document.getElementById("odgovor1").style.backgroundColor = "#d0451b";
	document.getElementById("odgovor2").style.backgroundColor = "#d0451b";
    document.getElementById("odgovor3").style.backgroundColor = "#d0451b";
    document.getElementById("odgovor4").style.backgroundColor = "#d0451b";
	document.getElementById("inputAnswer").value="";
}
function zapocniVreme(){
	document.getElementById('timer').innerHTML=tajmer;
	function vreme(){
		if (zaustavljanjeTajmera>0){
			tajmer--;
			document.getElementById('timer').innerHTML=tajmer;
		}
		else{
			document.getElementById('timer').innerHTML=tajmer;
		}
		if (tajmer==0){
			alert("Vreme za odgovor je isteklo!")
			proveraDugme();
}
	}
setInterval(vreme, 1000); //postavljanje intervala na 1 sekundu
}
function preskociPitanje(){
    zaustavljanjeTajmera=0;
    tajmer=20;
    document.getElementById("odg").style.display="none";
    setTimeout(function(){
        if (i>10){
            odustani()
        }
        else{
            zaustavljanjeTajmera=1;
            document.getElementById("timer").style.display="inline";
        }
        i++;
        ucitaj(i);
        ocisti();
        
       
    },3000)
}
function odustani(){
    document.getElementById("questionText").innerHTML=ime + " je osvojio/la " + tacniOdgovori + "/10!"
    document.getElementById("inputAnswer").style.display="none";
    document.getElementById("odg").style.display="none";
    document.getElementById("dugmad").style.display="none";
    document.getElementById("answersSection").style.display="none";
    zaustavljanjeTajmera=0;
    document.getElementById("timer").style.display="none";
}
