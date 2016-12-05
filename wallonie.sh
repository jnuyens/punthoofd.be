# BINNENLAND

echo -n "Updating wallonie ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/lesoir.xml "http://www.lesoir.be/actualite/belgique/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/7sur7.xml "http://www.7sur7.be/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/rtlinfo.xml "http://feeds.feedburner.com/rtlinfo/belgique?format=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/dh.xml "http://www.dhnet.be/rss/about.phtml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/lalibre.xml "http://www.lalibre.be/rss/index.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/rtbf.xml "http://www.rtbf.be/info/accueil/rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/sudpresse.xml "http://www.sudpresse.be/services/fils_rss/actualite/belgique/index.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/lecho.xml "http://www.lecho.be/rss/actualite.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/levif.xml "http://levif.rnews.be/fr/news/actualite/feed.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/msn.xml "http://actualite.fr.be.msn.com/rss/actualitebelge_rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/wallonie/google.xml "http://news.google.be/news?cf=all&ned=fr_be&hl=fr&output=rss"

php wallonie.php > parts/wallonie.part.new && mv parts/wallonie.part.new parts/wallonie.part

echo "done"

