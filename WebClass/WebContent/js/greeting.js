/**
 * 
 */
function greeting(nation)
{
	if(nation=='K'){
		document.getElementById("result").innerHTML = "안녕하세요.";
	
	}
	else if(nation=='A'){
		document.getElementById("result").innerHTML = "Hello.";
	
	}
	else{
		document.getElementById("result").innerHTML = "니 하오";
	}
	console.log("greeting end");
	console.log(document.getElementById("result"));
	}
