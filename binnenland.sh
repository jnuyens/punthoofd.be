# BINNENLAND

echo -n "Updating binnenland ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/binnenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/demorgen.xml "http://www.demorgen.be/nieuws/binnenland/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/knack.xml "http://www.knack.be/feeds/72-nieuws-belgie-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/hln.xml "http://www.hln.be/nieuws/belgie/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/nieuwsblad.xml "http://www.nieuwsblad.be/rss.aspx?section=nieuws&subsection=binnenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/standaard.xml "http://feeds.feedburner.com/dso-nieuws-binnenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/belangvanlimburg.xml "http://www.hbvl.be/syndicationservices/artfeedservice.svc/rss/mostrecent/binnenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/msn.xml "http://news.be.msn.com/binnenland/rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/skynet.xml "http://rss.mds.prd.skynet.be/News/RSS_nl_5.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/tijd.xml "http://www.tijd.be/rss/binnenland.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/deredactie.xml "http://www.deredactie.be/cm/de.redactie/binnenland?mode=atom"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/google.xml "http://news.google.be/?topic=n&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/vandaag.xml "http://www.vandaag.be/xml/vandaagbe-binnenland.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/binnenland/dewereldmorgen.xml "http://www.dewereldmorgen.be/taxonomy/term/81/feed"

php binnenland.php > parts/binnenland.part.new && mv parts/binnenland.part.new parts/binnenland.part

echo "done"

