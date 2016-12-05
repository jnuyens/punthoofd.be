<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Economie <?php RSSTag("economie")?></h1>

<p>De volgende financi&euml;le nieuwsberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/economie.xml.full", "Punthoofd" );
	
	parse("xml/economie/google.xml", "Google News");
	parse("xml/economie/tijd1.xml", "De Tijd");
	parse("xml/economie/tijd2.xml", "De Tijd");
	parse("xml/economie/tijd3.xml", "De Tijd");
	parse("xml/economie/trends1.xml", "Trends");
	parse("xml/economie/trends2.xml", "Trends");
	parse("xml/economie/trends3.xml", "Trends");
	parse("xml/economie/trends4.xml", "Trends");
	parse("xml/economie/trends5.xml", "Trends");
	parse("xml/economie/kanaalz1.xml", "Kanaal Z");
	parse("xml/economie/kanaalz2.xml", "Kanaal Z");
	parse("xml/economie/deredactie.xml", "De Redactie");
	parse("xml/economie/knack1.xml", "Knack");
	parse("xml/economie/knack2.xml", "Knack");
	parse("xml/economie/standaard.xml", "De Standaard");
	parse("xml/economie/demorgen.xml", "De Morgen");
	parse("xml/economie/gva.xml", "Gazet van Antwerpen");
	parse("xml/economie/nieuwsblad.xml", "Het Nieuwsblad");
	parse("xml/economie/hln.xml", "Het Laatste Nieuws");
	parse("xml/economie/belangvanlimburg.xml", "Het Belang van Limburg");
	parse("xml/economie/msn.xml", "MSN");
	parse("xml/economie/skynet.xml", "Skynet");
	parse("xml/economie/zita.xml", "Zita");
	parse("xml/economie/nbb.xml", "Nationale Bank van Belgi&euml;");
	parse("xml/economie/beursduivel.xml", "Beursduivel");
	parse("xml/economie/express.xml", "Express");

	
	dataMine( "economie", "rss/economie.xml", "Economie" );
	
?>
