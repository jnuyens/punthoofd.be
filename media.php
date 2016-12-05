<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Media &amp; Cultuur <?php RSSTag("media")?></h1>

<p>De volgende cultuur- en mediaberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/media.xml.full", "Punthoofd");
	
	parse("xml/media/google.xml", "Google News");
	parse("xml/media/gva.xml", "Gazet van Antwerpen");
	parse("xml/media/demorgen.xml", "De Morgen");
	parse("xml/media/knack.xml", "Knack");
	parse("xml/media/nieuwsblad.xml", "Het Nieuwsblad");
	parse("xml/media/standaard1.xml", "De Standaard");
	parse("xml/media/standaard2.xml", "De Standaard");
	parse("xml/media/tijd.xml", "De Tijd");
	parse("xml/media/deredactie.xml", "De Redactie");
	parse("xml/media/hln.xml", "Het Laatste Nieuws");
	parse("xml/media/skynet.xml", "Skynet");
	parse("xml/media/showbizzsite.xml", "Showbizzsite.be");
	parse("xml/media/jopo.xml", "Jopo");
	parse("xml/media/belg1.xml", "Belg.be");
	parse("xml/media/belg2.xml", "Belg.be");
	parse("xml/media/tvvisie1.xml", "TV visie");
	parse("xml/media/tvvisie2.xml", "TV visie");
	parse("xml/media/speedzone.xml", "Speedzone");
	parse("xml/media/vandaag.xml", "Vandaag.be");
	
	dataMine( "media", "rss/media.xml", "Media en Cultuur" );
	
?>
