# WEIRD

echo -n "Updating weird ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/inderand"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/demorgen.xml "http://www.demorgen.be/nieuws/weirdo/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/hln.xml "http://www.hln.be/nieuws/bizar/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/standaard.xml "http://feeds.feedburner.com/dso-nieuws-beroemdenbizar"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/zita.xml "http://www.zita.be/xml/bizar.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/nieuwsblad.xml "http://www.nieuwsblad.be/Rss.aspx?section=Kanaal&Kanaal=43"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/pakfriet.xml "http://www.pakfriet.be/rss.php"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/zibb.xml "http://www.zibb.nl/opmerkelijk.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/waarmaarraar.xml "http://www.waarmaarraar.nl/artrss.php"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/belg.xml "http://www.belg.be/nieuws/rss.php?id=9"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/vandaag.xml "http://www.vandaag.be/xml/vandaagbe-bizar.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/weird/knack.xml "http://knack.rnews.be/nl/actualiteit/nieuws/ondertussen/feed.rss"

php weird.php > parts/weird.part.new && mv parts/weird.part.new parts/weird.part

echo "done"

