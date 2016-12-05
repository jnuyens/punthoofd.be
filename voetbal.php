<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Voetbal <?php RSSTag("voetbal")?></h1>

<p>De volgende voetbalberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/voetbal.xml.full", "Punthoofd");
	
	parse("xml/voetbal/google.xml", "Google News");
	parse("xml/voetbal/hln1.xml", "Het Laatste Nieuws");
	parse("xml/voetbal/hln2.xml", "Het Laatste Nieuws");
	parse("xml/voetbal/hln3.xml", "Het Laatste Nieuws");
	parse("xml/voetbal/hln4.xml", "FC Update");
        parse("xml/voetbal/voetbalbe.xml", "Voetbal.be");
	parse("xml/voetbal/voetbalbelgie.xml", "Voetbal Belgi&euml;");
	parse("xml/voetbal/belgiumsoccer.xml", "Belgium Soccer");
	parse("xml/voetbal/voetbalkrant.xml", "Voetbalkrant");
	parse("xml/voetbal/sportwereld.xml", "Sportwereld");
	parse("xml/voetbal/demorgen.xml", "De Morgen");
	parse("xml/voetbal/voetbalactua.xml", "VoetbalActua");
	parse("xml/voetbal/voetbalgeruchten.xml", "Voetbalgeruchten");
	
	dataMine( "voetbal", "rss/voetbal.xml", "Voetbal" );
	
?>
