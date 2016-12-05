# BUITENLAND

echo -n "Updating buitenland ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/buitenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/demorgen.xml "http://www.demorgen.be/nieuws/buitenland/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/knack.xml "http://www.knack.be/feeds/72-nieuws-europa-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/knack2.xml "http://www.knack.be/feeds/72-nieuws-wereld-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/hln.xml "http://www.hln.be/nieuws/buitenland/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/nieuwsblad.xml "http://www.nieuwsblad.be/rss.aspx?section=nieuws&subsection=buitenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/standaard.xml "http://feeds.feedburner.com/dso-nieuws-buitenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/belangvanlimburg.xml "http://www.hbvl.be/syndicationservices/artfeedservice.svc/rss/mostrecent/buitenland"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/msn.xml "http://news.be.msn.com/buitenland/rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/skynet.xml "http://rss.mds.prd.skynet.be/News/RSS_nl_6.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/tijd.xml "http://www.tijd.be/rss/buitenland.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/deredactie.xml "http://www.deredactie.be/cm/de.redactie/buitenland?mode=atom"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/google.xml "http://news.google.be/?topic=w&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/vandaag.xml "http://www.vandaag.be/xml/vandaagbe-buitenland.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/dewereldmorgen.xml "http://www.dewereldmorgen.be/taxonomy/term/30/feed"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/buitenland/ips.xml "http://www.ipsnews.be/index.php?id=192&no_cache=1&type=334"

php buitenland.php > parts/buitenland.part.new && mv parts/buitenland.part.new parts/buitenland.part

echo "done"

