# MEDIA

echo -n "Updating media ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/mediaencultuur"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/demorgen.xml "http://www.demorgen.be/cultuur/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/knack.xml "http://www.knack.be/feeds/72-nieuws-cultuur-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/nieuwsblad.xml "http://www.nieuwsblad.be/rss.aspx?section=life&subsection=cultuur"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/standaard1.xml "http://feeds.feedburner.com/dso-nieuws-cultuur"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/standaard2.xml "http://feeds.feedburner.com/dso-lifestyle-multimedia"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/tijd.xml "http://www.tijd.be/rss/cultuur.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/deredactie.xml "http://www.deredactie.be/cm/de.redactie/cultuur%2Ben%2Bmedia?mode=atom"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/hln.xml "http://www.hln.be/showbizz/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/skynet.xml "http://rss.mds.prd.skynet.be/News/RSS_nl_10.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/google.xml "http://news.google.be/?topic=e&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/showbizzsite.xml "http://www.showbizzsite.be/nieuws/rss.asp"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/jopo.xml "http://feeds.feedburner.com/Jopo"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/belg1.xml "http://www.belg.be/nieuws/rss.php?id=3"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/belg2.xml "http://www.belg.be/nieuws/rss.php?id=13"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/tvvisie1.xml "http://www.tv-visie.be/rss/nieuwsbelgie.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/tvvisie2.xml "http://www.tv-visie.be/rss/nieuwsinternationaal.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/speedzone.xml "http://www.speedzone.be/RSS/speedzone.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/media/vandaag.xml "http://www.vandaag.be/xml/vandaagbe-entertainment.xml"

php media.php > parts/media.part.new && mv parts/media.part.new parts/media.part

echo "done"

