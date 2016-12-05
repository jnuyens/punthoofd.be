<?php
	include_once("misc.inc");
	lastUpdatedTag();
?>

<h1>Ruby <?php RSSTag("ruby")?></h1>

<p>De volgende ruby nieuwsberichten zijn momenteel "hot".</p>

<?php
	
	include_once( "dataminer.inc" );
	
	parse( "rss/ruby.xml.full", "Punthoofd" );
	
	parse( "xml/ruby/rubyinside.xml", "Ruby Inside" );
	parse( "xml/ruby/rubyflow.xml", "Ruby Flow" );
#	parse( "xml/ruby/ridingrails.xml", "Riding Rails" );
	parse( "xml/ruby/rubyonrails.xml", "Ruby-On-Rails" );
	parse( "xml/ruby/rubylang.xml", "Ruby-lang" );
	parse( "xml/ruby/reddit.xml", "Reddit" );
	parse( "xml/ruby/katz.xml", "Yehuda Katz" );
	parse( "xml/ruby/aaa.xml", "Acts as architect" );
	parse( "xml/ruby/blogfish.xml", "Blogfish" );
	parse( "xml/ruby/phusion.xml", "Phusion" );
	parse( "xml/ruby/rubybest.xml", "Ruby best practices" );
	parse( "xml/ruby/signalvsnoise.xml", "Signal vs Noise" );
	parse( "xml/ruby/jasonseifer.xml", "Jason Seifer" );
#	parse( "xml/ruby/omgbloglol.xml", "omgbloglol" );
	parse( "xml/ruby/railsenvy.xml", "Rails Envy" );
	parse( "xml/ruby/stjhimy.xml", "stJhimy" );
	parse( "xml/ruby/brandonaaron.xml", "BrandonAaron" );
	parse( "xml/ruby/quarkruby.xml", "QuarkRuby" );
	parse( "xml/ruby/ryansscraps.xml", "Ryan's Scraps" );
	parse( "xml/ruby/binarylogic.xml", "Binary Logic" );
	parse( "xml/ruby/obiefernandez.xml", "Obie Frenandez" );
	parse( "xml/ruby/spreenews.xml", "Spree News" );
#	parse( "xml/ruby/onrails.xml", "On Rails" );
	parse( "xml/ruby/railsdog.xml", "Rails Dog" );
	parse( "xml/ruby/rubyreflector.xml", "Ruby Reflector" );
	
	dataMine( "ruby", "rss/ruby.xml", "ruby" );
	
?>
