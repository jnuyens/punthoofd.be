#VOETBAL

echo -n "Updating voetbal ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/google.xml "http://news.google.be/?topic=s&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/hln1.xml "http://www.hln.be/sport/buitenlandsvoetbal/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/hln2.xml "http://www.hln.be/sport/belgischvoetbal/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/hln3.xml "http://www.hln.be/sport/championsleague/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/hln4.xml "http://www.fcupdate.nl/xml/rss/nl.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/voetbalbe.xml "http://www.voetbal.be/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/voetbalbelgie.xml "http://www.voetbalbelgie.be/nl/rss/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/belgiumsoccer.xml "http://belgiumsoccer.be/nieuws/index.php?option=com_rss&feed=RSS2.0&no_html=1"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/voetbalkrant.xml "http://www.voetbalkrant.com/rss/nieuws.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/sportwereld.xml "http://www.sportwereld.be/Rss.aspx?section=Voetbal&subsection=EersteKlasse"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/demorgen.xml "http://www.demorgen.be/sport/voetbal/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/voetbalactua.xml "http://voetbalactua.be/rss.php"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/voetbal/voetbalgeruchten.xml "http://feeds.feedburner.com/Voetbalgeruchten"

php voetbal.php > parts/voetbal.part.new && mv parts/voetbal.part.new parts/voetbal.part

echo "done"

