<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Wetenschap &amp; Technologie  <?php RSSTag("tech")?></h1>

<p>De volgende wetenschappelijke nieuwsberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/tech.xml.full", "Punthoofd");
	
	parse("xml/tech/google1.xml", "Google News");
	parse("xml/tech/google2.xml", "Google News");
	parse("xml/tech/knack1.xml", "Knack");
	parse("xml/tech/knack2.xml", "Knack");
	parse("xml/tech/standaard.xml", "De Standaard");
	parse("xml/tech/demorgen1.xml", "De Morgen");
	parse("xml/tech/demorgen2.xml", "De Morgen");
	parse("xml/tech/nieuwsblad1.xml", "Het Nieuwsblad");
	parse("xml/tech/nieuwsblad2.xml", "Het Nieuwsblad");
	parse("xml/tech/nieuwsblad3.xml", "Het Nieuwsblad");
	parse("xml/tech/hln1.xml", "Het Laatste Nieuws");
	parse("xml/tech/hln2.xml", "Het Laatste Nieuws");
	parse("xml/tech/hln3.xml", "Het Laatste Nieuws");
	parse("xml/tech/gva.xml", "Gazet van Antwerpen");
	parse("xml/tech/belangvanlimburg.xml", "Het Belang van Limburg");
	parse("xml/tech/zita.xml", "Zita");
	parse("xml/tech/zdnet.xml", "ZDnet");
	parse("xml/tech/tweakers.xml", "Tweakers");
	parse("xml/tech/clickx.xml", "Clickx");
	parse("xml/tech/itpro.xml", "IT professional");
	parse("xml/tech/belg1.xml", "Belg.be");
	parse("xml/tech/belg2.xml", "Belg.be");
	parse("xml/tech/belg3.xml", "Belg.be");
	parse("xml/tech/datanews.xml", "Datanews");
	parse("xml/tech/medinews.xml", "Medinews.be");

	dataMine( "tech", "rss/tech.xml", "Wetenschap en Technologie" );
	
?>
