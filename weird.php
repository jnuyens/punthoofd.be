<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Weird <?php RSSTag("weird")?></h1>

<p>De volgende weirde nieuwsberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/weird.xml.full", "Punthoofd");
	
	parse("xml/weird/standaard.xml", "De Standaard");
	parse("xml/weird/demorgen.xml", "De Morgen");
	parse("xml/weird/gva.xml", "Gazet van Antwerpen");
	parse("xml/weird/hln.xml", "Het Laatste Nieuws");
	parse("xml/weird/zita.xml", "Zita");
	parse("xml/weird/nieuwsblad.xml", "Het Nieuwsblad");
	parse("xml/weird/pakfriet.xml", "Pakfriet.be");
	parse("xml/weird/zibb.xml", "Zibb");
	parse("xml/weird/waarmaarraar.xml", "WaarMaarRaar.nl");
	parse("xml/weird/belg.xml", "Belg.be");
	parse("xml/weird/vandaag.xml", "Vandaag.be");
	parse("xml/weird/knack.xml", "Knack");
	
	dataMine( "weird", "rss/weird.xml", "Weird" );
	
?>
