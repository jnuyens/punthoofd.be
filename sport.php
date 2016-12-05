<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Sport <?php RSSTag("sport")?></h1>

<p>De volgende sportberichten zijn momenteel "hot". Er is een aparte pagina met <a href="/voetbal">voetbal berichten</a>.</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/sport.xml.full", "Punthoofd");
	
	parse("xml/sport/google.xml", "Google News");
	parse("xml/sport/sporza.xml", "Sporza");
	parse("xml/sport/knack.xml", "Knack");
	parse("xml/sport/standaard.xml", "De Standaard");
	parse("xml/sport/demorgen.xml", "De Morgen");
	parse("xml/sport/gva.xml", "Gazet van Antwerpen");
	parse("xml/sport/tijd.xml", "De Tijd");
	parse("xml/sport/sportwereld.xml", "Sportwereld");
	parse("xml/sport/hln.xml", "Het Laatste Nieuws");
	parse("xml/sport/belangvanlimburg.xml", "Het Belang van Limburg");
	parse("xml/sport/msn.xml", "MSN");
	parse("xml/sport/zita.xml", "MSN");
	parse("xml/sport/skynet.xml", "Skynet");
	parse("xml/sport/belg.xml", "Belg.be");
	parse("xml/sport/vandaag.xml", "Vandaag.be");
	parse("xml/voetbal/voetbalbe.xml", "Voetbal.be");
	
	dataMine( "sport", "rss/sport.xml", "Sport" );
	
?>
