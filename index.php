<?php
	include("koneksi.php");
	if (isset($_GET['isi'])){
		$sql=mysql_query("insert into pesan(dari,ke,isi,status) 
						  values('".$_GET['dari']."','".$_GET['ke']."','".$_GET['isi']."',false)");  
		exit;
	}
	
	if (isset($_GET['ke'])){
		$sql=mysql_query("select * from pesan where ke='".$_GET['ke']."' and status=false");
		$strHasil="";
		while ($rechasil=mysql_fetch_array($sql)){
			$strHasil=$strHasil.$rechasil['dari'].":".$rechasil['isi']."aNewLine";
			$qrupdate=mysql_query("update pesan set status=true where id=".$rechasil['id']);
		}
		if ($strHasil!=""){
			echo $strHasil;
		}
		exit;
	}
?>

<script type="text/javascript" src="tampildata.js"></script>
<script>
	function isi(){
		document.getElementById("pesan").value+=document.getElementById("txdari").value+":"+
												document.getElementById("pesankirim").value+" \n";
		showData("isi="+document.getElementById("pesankirim").value+
				 "&dari="+document.getElementById("txdari").value+
                 "&ke="+document.getElementById("txke").value,"v","hasil","index.php");
		document.getElementById("pesankirim").value="";
	}
	function cekData(){
			showData("ke="+document.getElementById("txdari").value,"v","hasil","index.php");
			document.getElementById("pesan").value+= document.getElementById("hasil").value.replace(/aNewLine/g,"\n");
			document.getElementById("pesan").scrollTop = document.getElementById("pesan").scrollHeight;
	}
</script>
<body onload="setInterval('cekData()',2000);">
<textarea name="pesan" id="pesan" cols="45" rows="20"></textarea>
<br />
Dari
<label for="txdari"></label>
<input type="text" name="txdari" id="txdari" />
ke
<label for="txke"></label>
<input type="text" name="txke" id="txke" />
<br />
<textarea name="pesankirim" id="pesankirim" cols="45" rows="3"></textarea>
<label for="hasil"></label>
<input type="hidden" name="hasil" id="hasil" />
<br />
<input name="tb" type="button"  onclick="isi();" value="Kirim" />
</body>
