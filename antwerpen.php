<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Antwerpen  <?php RSSTag("antwerpen")?></h1>

<p>Top 10 nieuwsberichten uit de provincie Antwerpen.</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/antwerpen.xml.full", "Punthoofd" );
	
	parse("xml/antwerpen/deredactie.xml", "De Redactie");
	parse("xml/antwerpen/standaard.xml", "De Standaard");
	parse("xml/antwerpen/nieuwsblad.xml", "Nieuwsblad");
	parse("xml/antwerpen/gva.xml", "Gazet van Antwerpen");
	parse("xml/antwerpen/atv.xml", "ATV");
	parse("xml/antwerpen/antwerpen.xml", "Stad Antwerpen");
	parse("xml/antwerpen/provant.xml", "Provincie Antwerpen");
	
	dataMine( "antwerpen", "rss/antwerpen.xml", "Binnenland" );
	
?>
