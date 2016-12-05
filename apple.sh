# APPLE

echo -n "Updating apple ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/macworld.xml "http://rss.macworld.com/macworld/feeds/main"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/macrumors.xml "http://www.macrumors.com/macrumors.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/tuaw.xml "http://www.tuaw.com/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/appleinsider.xml "http://www.appleinsider.com/appleinsider.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/digg.xml "http://digg.com/rss/indexapple.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/slashdot.xml "http://rss.slashdot.org/Slashdot/slashdotApple"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/apple.xml "http://images.apple.com/main/rss/hotnews/hotnews.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/appletell.xml "http://feeds.feedburner.com/appletell?format=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/macdailynews.xml "http://feeds.feedburner.com/feedburner/Ylew?format=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/macnn.xml "http://feeds.macnn.com/macnn/rss/macnn"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/cnet.xml "http://news.cnet.com/8300-13579_3-37.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/worldofapple.xml "http://feeds.feedburner.com/WorldOfApple"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/yahoo.xml "http://rss.news.yahoo.com/rss/applecomputer"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/macblogz.xml "http://feeds.feedburner.com/MacBlogz"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/apple/arstechnica.xml "http://feeds.arstechnica.com/arstechnica/apple/"


php apple.php > parts/apple.part.new && mv parts/apple.part.new parts/apple.part

echo "done"

