<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Gaming <?php RSSTag("games")?></h1>

<p>De volgende berichten over gaming zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/games.xml.full", "Punthoofd");
	
	parse("xml/games/gamequarter.xml", "Game Quarter");
	parse("xml/games/insidegamer.xml", "Inside Gamer");
	parse("xml/games/9lives.xml", "9lives");
	parse("xml/games/4gamers.xml", "4gamers");
	
	dataMine( "games", "rss/games.xml", "Games" );
	
?>
