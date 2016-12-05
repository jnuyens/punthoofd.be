<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Wallonie  <?php RSSTag("wallonie")?></h1>

<p>Les actualités en Wallonie.</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/wallonie.xml.full", "Punthoofd" );
	
	parse("xml/wallonie/lesoir.xml", "Le Soir");
	parse("xml/wallonie/7sur7.xml", "7sur7");
	parse("xml/wallonie/rtlinfo.xml", "RTL info");
	parse("xml/wallonie/dh.xml", "Dernière Heure");
	parse("xml/wallonie/lalibre.xml", "La Libre");
	parse("xml/wallonie/rtbf.xml", "RTBF");
	parse("xml/wallonie/sudpresse.xml", "Sud Presse");
	parse("xml/wallonie/lecho.xml", "L'Echo");
	parse("xml/wallonie/levif.xml", "Le Vif");
	parse("xml/wallonie/msn.xml", "MSN");
	parse("xml/wallonie/google.xml", "Google News");
	
	dataMine( "wallonie", "rss/wallonie.xml", "Wallonie" );
	
?>
