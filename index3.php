<script type="text/javascript" src="jq.js"></script>
<script>
	function isi(x){
		$.ajax({
    url: x,
    cache: false
    })
    .done(function( html ) {
    $( "#isik" ).text( html );
    });
	}
</script>
<body>
<input name="tb" type="button" onclick="isi('hore');" value="Kirim" />
<div id="isik"></div>
</body>
