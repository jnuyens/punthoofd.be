<?php
	$page = $_GET['page'];
	if( !$page )
		$page = "hoofdpunten";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<title>Punthoofd - <?php echo $page; ?></title>
	<link href="/punthoofd.css" media="screen" rel="Stylesheet" type="text/css"/>
	<link rel="alternate" title="Punthoofd - <?php echo $page; ?>" href="/rss/<?php echo $page; ?>.xml" type="application/rss+xml"/>
	<meta http-equiv="refresh" content="300"/>
	<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
	</script>
	<script type="text/javascript">
	_uacct = "UA-3231609-3";
	urchinTracker();
	</script>
</head>
<body onload="checkLocationHash();">

	<script language="JavaScript">
	<!--
		function checkLocationHash(){
			hash = document.location.hash;
			if( hash ) {
				found = false;
				for( i in document.anchors ) {
					anchor = "#" + document.anchors[i].name
					if( hash == anchor )
						found = true;
				}
				if( !found ) {
					alert( "Het nieuwsitem waar u naar bent verwezen is helaas niet meer beschikbaar." );
				}
			}
		}
	-->
	</script>

	<div id="leftcontent">
		
		<center><a href="http://punthoofd.be" title="Punthoofd"><img src="/punthoofdhoofd.png" alt="Punthoofd logo" class="center"/></a></center>
		<div id="menu">
			<ul>
				<li><a href="/hoofdpunten">Hoofdpunten</a></li>
				<li><a href="/binnenland">Binnenland</a></li>
				<li><a href="/buitenland">Buitenland</a></li>
				<li><a href="/tech">Wetenschap</a></li>
				<li><a href="/economie">Economie</a></li>
				<li><a href="/sport">Sport</a></li>
				<li><a href="/media">Media</a></li>
				<li><a href="/weird">Weird</a></li>
				<li><a href="/wallonie">Wallonie</a> <sup style="color:#9cbfc7;">(Francais)</sup></li>
				<li><a href="/nederland">Nederland</a></li>
				<li><a href="/english">World</a> <sup style="color:#9cbfc7;">(English)</sup></li>
				<li><a href="/info">Meer info</a></li>
				<li id="close"/>
			</ul>
		</div>
	</div>

	<div id="centercontent">
		
		<div id="header">
			<div style="position:absolute; right:20px; top:5px;">
			<span style="font-size:30px;letter-spacing:1.5px;font-weight:bold;"><span style="color:#fd9602;">punt</span><span style="color:#9cbfc7;">hoofd</span><span style="color:#fd9602;">punt</span><span style="color:#9cbfc7;">be</span></span>
			</div>
		</div>
		
		<div id="main">
			<?php
				include( "parts/" . $page . ".part");
			?>
			
			<div class="newsitem">
				<p class="small center">
					<a href="http://punthoofd.be" style="float:right;"><img style="vertical-align:middle;" src="/images/punthoofdbutton.png" alt="Punthoofd button"/></a> 
					<a href="http://punthoofd.be" title="punthoofd.be">Punthoofd.be</a> -
					Copyright &copy; 2008-2010 - 
					Concept en realisatie door
					<a href="http://anthony.liekens.net">Anthony Liekens</a>
				</p>
			</div>
		</div>
		
	</div>
</body>
</html>