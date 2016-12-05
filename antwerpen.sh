# ANTWERPEN

echo -n "Updating antwerpen ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/stadenregio"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/nieuwsblad.xml "http://www.nieuwsblad.be/Rss.aspx?section=Regio&Subsection=Antwerpen"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/standaard.xml "http://feeds.feedburner.com/dso-nieuws-regio-3"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/deredactie.xml "http://www.deredactie.be/cm/vrtnieuws/regio/antwerpen?mode=atom"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/atv.xml "http://www.atv.be/rss/rssfeed.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/antwerpen.xml "http://www.antwerpen.be/eCache/ABE/30/15/932.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/antwerpen/provant.xml "http://www.provant.be/rss.xml?type=nieuws"

php antwerpen.php > parts/antwerpen.part.new && mv parts/antwerpen.part.new parts/antwerpen.part

echo "done"

