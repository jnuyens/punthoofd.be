<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>World News (in English) <?php RSSTag("english")?></h1>

<p>Here's a top 10 of world news items, in English. We're aiming at providing an unbiased view on global news, mixing together news sources from the Americas, Europe, Asia and the Middle East.</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse("rss/english.xml.full", "Punthoofd");

	parse("xml/english/bbc.xml", "BBC News");
	parse("xml/english/cnn.xml", "CNN");
	parse("xml/english/wikinews.xml", "Wikinews" );
	parse("xml/english/huffington.xml", "Huffington Post" );
	parse("xml/english/google.xml", "Google News");
	parse("xml/english/reuters.xml", "Reuters");
	parse("xml/english/ap.xml", "Associated Press");
	parse("xml/english/npr.xml", "NPR");
	parse("xml/english/time.xml", "Time Magazine");
	parse("xml/english/spiegel.xml", "Der Spiegel");
	parse("xml/english/csmonitor.xml", "Christian Science Monitor");
	parse("xml/english/times.xml", "Times");
	parse("xml/english/aol.xml", "AOL News");
	parse("xml/english/msnbc.xml", "MSNBC");	
	parse("xml/english/yahoo.xml", "Yahoo! News");
	parse("xml/english/guardian.xml", "Guardian");
	parse("xml/english/worldnews.xml", "World News");
	parse("xml/english/vrt.xml", "De Redactie");
	parse("xml/english/aljazeera.xml", "Al Jazeera");
	parse("xml/english/xinhua.xml", "Xinhua");
	parse("xml/english/asiaone.xml", "AsiaOne");
	parse("xml/english/pina.xml", "Pacific Islands NA");
	parse("xml/english/upi.xml", "UPI");
	parse("xml/english/rian.xml", "RIAN");
	parse("xml/english/elpais.xml", "El Pais");
	parse("xml/english/alternet.xml", "Alternet");
	parse("xml/english/australian.xml", "Australian");
	parse("xml/english/iol.xml", "Independent online");
	parse("xml/english/kyodo.xml", "Kyodo News");
	parse("xml/english/rt.xml", "RT");
	parse("xml/english/globalnews.xml", "Global News.ca");
	parse("xml/english/neurope.xml", "New Europe");
	parse("xml/english/toi.xml", "Times of India");
	parse("xml/english/france24.xml", "France 24");
	
	dataMine( "english", "rss/english.xml", "English" );
	
?>
