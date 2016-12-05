# NEDERLAND

echo -n "Updating nederland ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/trouw.xml "http://www.trouw.nl/?service=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/nrc.xml "http://www.nrc.nl/rss/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/nd.xml "http://www.nd.nl/rss.php/nieuws"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/nos1.xml "http://feeds.nos.nl/nosjournaal"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/volkskrant.xml "http://feeds.volkskrant.nl/laatstenieuws"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/nunl.xml "http://www.nu.nl/feeds/rss/algemeen.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/rnw.xml "http://www.rnw.nl/nederlands/feed"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/nos2.xml "http://feeds.nos.nl/nosnieuwsalgemeen"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/blikopnieuws.xml "http://www.blikopnieuws.nl/rss/algemeen.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/at5.xml "http://www.at5.nl/feed"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/nieuws.xml "http://www.nieuws.nl/rss/algemeen"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/rtvoost.xml "http://rss.rtvoost.nl/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/weekkrant.xml "http://www.deweekkrant.nl/rss.php/algemeen"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/elsevier.xml "http://www.elsevier.nl/web/RSS/Homepage-RSS.htm?output=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/bndestem.xml "http://www.bndestem.nl/regio/?service=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/telegraaf.xml "http://www.telegraaf.nl/rss/index.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/ad.xml "http://www.ad.nl/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/dvhn.xml "http://www.dvhn.nl/nieuws/index.jsp?service=rss"
# wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/gelderlander.xml "http://www.gelderlander.nl/voorpagina/?service=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/stentor1.xml "http://www.destentor.nl/algemeen/binnenland/?service=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/stentor2.xml "http://www.destentor.nl/regio/?service=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/gooieneemlander.xml "http://www.gooieneemlander.nl/nieuws/index.jsp?service=rss"
# wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/limburger.xml "http://www.limburger.nl/apps/pbcs.dll/section?Category=RSS&mime=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/fd1.xml "http://www.fd.nl/nieuws/laatstenieuws/?view=RSS"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/fd2.xml "http://www.fd.nl/nieuws/dekrant/?view=RSS"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/refdag.xml "http://www.refdag.nl/cmlink/hoofdpunten_1_481181?localLinksEnabled=false"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/msn.xml "http://nieuws.nl.msn.com/rss/laatstenieuws_rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/rtvnh.xml "http://www.rtvnh.nl/rss/nieuws.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/nederland/rtl.xml "http://www.rtl.nl/service/rss/rtlnieuws/index.xml"


php nederland.php > parts/nederland.part.new && mv parts/nederland.part.new parts/nederland.part

echo "done"

