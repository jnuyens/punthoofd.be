<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Hoofdpunten <?php RSSTag("hoofdpunten")?></h1>

<p>Dit is de top 10 van de huidige nieuwsberichten in de Vlaamse pers. Volg het heetste Vlaamse nieuws nu ook op <a href="http://twitter.com/punthoofdpuntbe">Twitter</a>.</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/hoofdpunten.xml.full", "Punthoofd");

	parse("xml/hoofdpunten/google.xml", "Google News");
	parse("xml/hoofdpunten/deredactie.xml", "De Redactie");
	parse("xml/hoofdpunten/knack.xml", "Knack");
	parse("xml/hoofdpunten/standaard.xml", "De Standaard");
	parse("xml/hoofdpunten/demorgen.xml", "De Morgen");
	parse("xml/hoofdpunten/gva.xml", "Gazet van Antwerpen");
	parse("xml/hoofdpunten/tijd.xml", "De Tijd");
	parse("xml/hoofdpunten/vtm.xml", "VTM");
	parse("xml/hoofdpunten/nieuwsblad.xml", "Het Nieuwsblad");
	parse("xml/hoofdpunten/hln.xml", "Het Laatste Nieuws");
	parse("xml/hoofdpunten/belangvanlimburg.xml", "Het Belang van Limburg");
	parse("xml/hoofdpunten/msn.xml", "MSN");
	parse("xml/hoofdpunten/skynet.xml", "Skynet");
	parse("xml/hoofdpunten/zita.xml", "Zita");
	parse("xml/hoofdpunten/belg1.xml", "Belg.be");
	parse("xml/hoofdpunten/belg2.xml", "Belg.be");
	parse("xml/hoofdpunten/dewereldmorgen.xml", "De Wereld Morgen");
	parse("xml/hoofdpunten/vandaag.xml", "Vandaag.be");
	parse("xml/hoofdpunten/apache.xml", "Apache");
	parse("xml/hoofdpunten/vt4.xml", "VT4");
	parse("xml/hoofdpunten/clint.xml", "Clint");
	
	dataMine( "hoofdpunten", "rss/hoofdpunten.xml", "Hoofdpunten" );
	
?>
