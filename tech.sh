# TECH

echo -n "Updating tech ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/demorgen1.xml "http://www.demorgen.be/nieuws/wetenschap/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/knack1.xml "http://www.knack.be/feeds/72-nieuws-wetenschap-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/knack2.xml "http://www.knack.be/feeds/72-nieuws-technologie-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/hln1.xml "http://www.hln.be/nieuws/wetenschap/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/hln2.xml "http://www.hln.be/nieuws/multimedia/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/hln3.xml "http://www.hln.be/nieuws/gezondheid/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/nieuwsblad1.xml "http://www.nieuwsblad.be/rss.aspx?section=life&subsection=wetenschap"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/nieuwsblad2.xml "http://www.nieuwsblad.be/rss.aspx?section=life&subsection=multimedia"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/nieuwsblad3.xml "http://www.nieuwsblad.be/rss.aspx?section=life&subsection=health"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/belangvanlimburg.xml "http://www.hbvl.be/syndicationservices/artfeedservice.svc/rss/mostrecent/wetenschap"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/wetenschap"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/standaard.xml "http://www.standaard.be/Rss.aspx?section=Nieuws&subsection=Wetenschap"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/google1.xml "http://news.google.be/?topic=t&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/google2.xml "http://news.google.be/?topic=m&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/demorgen1.xml "http://www.demorgen.be/nieuws/multimedia/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/demorgen2.xml "http://www.demorgen.be/nieuws/gezondheid/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/zita.xml "http://www.zita.be/xml/technologie.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/clickx.xml "http://rss.minoc.com/clickxmagazine/nieuws_be.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/zdnet.xml "http://rss.minoc.com/zdnet/news_be.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/tweakers.xml "http://tweakers.net/feeds/mixed.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/itpro.xml "http://rss.minoc.com/itprofessional/news_be.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/belg1.xml "http://www.belg.be/nieuws/rss.php?id=2"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/belg2.xml "http://www.belg.be/nieuws/rss.php?id=5"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/belg3.xml "http://www.belg.be/nieuws/rss.php?id=7"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/medinews.xml "http://www.medinews.be/xml.asp"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/digimedia.xml "http://feeds.feedburner.com/DigimediaHeadlines"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/tech/datanews.xml "http://www.datanews.be/feeds/90-3-News-section-rss2.0.xml"

php tech.php > parts/tech.part.new && mv parts/tech.part.new parts/tech.part

echo "done"

