<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Nederland <?php RSSTag("nederland")?></h1>

<p>De actualiteiten bij onze noorderburen.</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/nederland.xml.full", "Punthoofd" );
	
	parse("xml/nederland/trouw.xml", "Trouw");
	parse("xml/nederland/nrc.xml", "NRC");
	parse("xml/nederland/nd.xml", "ND");
	parse("xml/nederland/nos1.xml", "NOS");
	parse("xml/nederland/nos2.xml", "NOS");
	parse("xml/nederland/volkskrant.xml", "Volkskrant");
	parse("xml/nederland/nunl.xml", "NU.nl");
	parse("xml/nederland/rnw.xml", "RNW");
	parse("xml/nederland/blikopnieuws.xml", "Blik op Nieuws");
	parse("xml/nederland/at5.xml", "AT5");
	parse("xml/nederland/nieuws.xml", "Nieuws.nl");
	parse("xml/nederland/rtvoost.xml", "RTV Oost");
	parse("xml/nederland/weekkrant.xml", "De Weekkrant");
	parse("xml/nederland/elsevier.xml", "Elsevier");
	parse("xml/nederland/bndestem.xml", "BN De Stem");
	parse("xml/nederland/telegraaf.xml", "Telegraaf");
	parse("xml/nederland/ad.xml", "Algemeen Dagblad");
	parse("xml/nederland/dvhn.xml", "Dagblad van het Noorden");
//	parse("xml/nederland/gelderlander.xml", "Gelderlander");
	parse("xml/nederland/stentor1.xml", "De Stentor");
	parse("xml/nederland/stentor2.xml", "De Stentor");
	parse("xml/nederland/gooieneemlander.xml", "De Gooi- en Eemlander");
//	parse("xml/nederland/limburger.xml", "De Limburger");
	parse("xml/nederland/fd1.xml", "Het Financieele Dagblad");
	parse("xml/nederland/fd2.xml", "Het Financieele Dagblad");
	parse("xml/nederland/refdag.xml", "Reformatorisch Dagblad");
	parse("xml/nederland/msn.xml", "MSN");
	parse("xml/nederland/rtvnh.xml", "Radio+TV Noord-Holland");
	parse("xml/nederland/rtl.xml", "RTL");
	
	dataMine( "nederland", "rss/nederland.xml", "Nederland" );
	
?>
