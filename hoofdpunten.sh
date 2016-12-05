# HOOFDPUNTEN

echo -n "Updating hoofdpunten ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/gva.xml "http://rss.feedsportal.com/c/865/f/413951/index.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/demorgen.xml "http://www.demorgen.be/nieuws/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/knack.xml "http://rss.feedsportal.com/c/32571/f/526926/index.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/hln.xml "http://www.hln.be/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/nieuwsblad.xml "http://feeds.nieuwsblad.be/nieuws/snelnieuws?format=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/standaard.xml "http://feeds.feedburner.com/dso-snelnieuws"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/belangvanlimburg.xml "http://rss.feedsportal.com/c/865/f/11107/index.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/vtm.xml "http://www.vtm.be/rss/nieuws.php"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/msn.xml "http://nieuws.be.msn.com/rss/nieuws_rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/skynet.xml "http://rss.mds.prd.skynet.be/News/RSS_nl_19.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/tijd.xml "http://www.tijd.be/rss/nieuws.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/deredactie.xml "http://www.deredactie.be/cm/de.redactie/newswire?mode=atom"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/google.xml "http://news.google.com/?output=rss&ned=:ePkh8BM9EwLbwQq0w4CFkC15OUpMSalGAif3tzDN7DXZqPt30eXZi8sfAgBbfBBQ"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/zita.xml "http://www.zita.be/xml/nieuws.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/belg1.xml "http://www.belg.be/nieuws/rss.php"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/belg2.xml "http://www.belg.be/nieuws/rss.php?id=8"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/dewereldmorgen.xml "http://www.dewereldmorgen.be/nieuws/feed"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/vandaag.xml "http://www.vandaag.be/xml/vandaagbe-algemeen.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/apache.xml "http://feeds.feedburner.com/apache/feed"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/vt4.xml "http://www.vt4.be/nieuws/feed"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/hoofdpunten/clint.xml "http://feeds.feedburner.com/clint-rss"

php hoofdpunten.php > parts/hoofdpunten.part.new && mv parts/hoofdpunten.part.new parts/hoofdpunten.part

echo "done"

