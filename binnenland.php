<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Binnenland  <?php RSSTag("binnenland")?></h1>

<p>De volgende binnenlandse nieuwsberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/binnenland.xml.full", "Punthoofd" );
	
	parse("xml/binnenland/google.xml", "Google News");
	parse("xml/binnenland/deredactie.xml", "De Redactie");
	parse("xml/binnenland/knack.xml", "Knack");
	parse("xml/binnenland/standaard.xml", "De Standaard");
	parse("xml/binnenland/demorgen.xml", "De Morgen");
	parse("xml/binnenland/gva.xml", "Gazet van Antwerpen");
	parse("xml/binnenland/tijd.xml", "De Tijd");
	parse("xml/binnenland/nieuwsblad.xml", "Het Nieuwsblad");
	parse("xml/binnenland/hln.xml", "Het Laatste Nieuws");
	parse("xml/binnenland/belangvanlimburg.xml", "Het Belang van Limburg");
	parse("xml/binnenland/msn.xml", "MSN");
	parse("xml/binnenland/skynet.xml", "Skynet");
	parse("xml/binnenland/vandaag.xml", "Vandaag.be");
	parse("xml/binnenland/dewereldmorgen.xml", "De Wereld Morgen");
	
	dataMine( "binnenland", "rss/binnenland.xml", "Binnenland" );
	
?>
