var xmlhttp,jnOut,vObj,vFile;
function trim(str, chars) {
	return ltrim(rtrim(str, chars), chars);
}

function ltrim(str, chars) {
	chars = chars || "\\s";
	return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}

function rtrim(str, chars) {
	chars = chars || "\\s";
	return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}

function showData(str,jn,obj,nFl){
	jnOut=jn;
	vObj=obj;
	vFile=nFl;
	xmlhttp=GetXmlHttpObject();
	if (xmlhttp==null){
		alert ("Browser does not support HTTP Request");
  		return;
  	}
	var url=vFile;
	url=url+"?"+str;
	url=url+"&sid="+Math.random();
	xmlhttp.onreadystatechange=stateChanged;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
}

function stateChanged(){
	if (xmlhttp.readyState==4){
		if(jnOut=='v'){
			document.getElementById(vObj).value=trim(xmlhttp.responseText);
		}else if(jnOut=='i'){
			document.getElementById(vObj).innerHTML=trim(xmlhttp.responseText);
		}else{
			
		}
	}
}

function GetXmlHttpObject(){
	if (window.XMLHttpRequest){
	  	// code for IE7+, Firefox, Chrome, Opera, Safari
  		return new XMLHttpRequest();
  	}
	if (window.ActiveXObject){
	  // code for IE6, IE5
  		return new ActiveXObject("Microsoft.XMLHTTP");
  	}
	return null;
}