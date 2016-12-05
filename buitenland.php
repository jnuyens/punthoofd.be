<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Buitenland <?php RSSTag("buitenland")?></h1>

<p>De volgende buitenlandse nieuwsberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/buitenland.xml.full", "Punthoofd" );
	
	parse("xml/buitenland/google.xml", "Google News");
	parse("xml/buitenland/deredactie.xml", "De Redactie");
	parse("xml/buitenland/knack.xml", "Knack");
	parse("xml/buitenland/knack2.xml", "Knack");
	parse("xml/buitenland/standaard.xml", "De Standaard");
	parse("xml/buitenland/demorgen.xml", "De Morgen");
	parse("xml/buitenland/gva.xml", "Gazet van Antwerpen");
	parse("xml/buitenland/tijd.xml", "De Tijd");
	parse("xml/buitenland/nieuwsblad.xml", "Het Nieuwsblad");
	parse("xml/buitenland/hln.xml", "Het Laatste Nieuws");
	parse("xml/buitenland/belangvanlimburg.xml", "Het Belang van Limburg");
	parse("xml/buitenland/msn.xml", "MSN");
	parse("xml/buitenland/skynet.xml", "Skynet");
	parse("xml/buitenland/vandaag.xml", "Vandaag.be");
	parse("xml/buitenland/dewereldmorgen.xml", "De Wereld Morgen");
	parse("xml/buitenland/ips.xml", "Inter Press Service");
	
	dataMine( "buitenland", "rss/buitenland.xml", "Buitenland" );
	
?>
