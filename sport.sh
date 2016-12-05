# SPORT

echo -n "Updating sport ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/sport"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/demorgen.xml "http://www.demorgen.be/sport/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/knack.xml "http://www.knack.be/feeds/72-nieuws-sport-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/hln.xml "http://www.hln.be/sport/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/sportwereld.xml "http://www.sportwereld.be/Rss.aspx?section=snelnieuws"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/standaard.xml "http://feeds.feedburner.com/dso-nieuws-sport"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/belangvanlimburg.xml "http://www.hbvl.be/syndicationservices/artfeedservice.svc/rss/mostrecent/sport"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/msn.xml "http://news.be.msn.com/sport/rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/skynet.xml "http://rss.mds.prd.skynet.be/News/RSS_nl_9.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/zita.xml "http://www.zita.be/xml/sport.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/tijd.xml "http://www.tijd.be/rss/sport.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/google.xml "http://news.google.be/?topic=s&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/sporza.xml "http://www.sporza.be/cm/sporza?mode=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/belg.xml "http://www.belg.be/nieuws/rss.php?id=14"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/sport/vandaag.xml "http://www.vandaag.be/xml/vandaagbe-sport.xml"

php sport.php > parts/sport.part.new && mv parts/sport.part.new parts/sport.part

echo "done"

