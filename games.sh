# GAMES

echo -n "Updating games ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/games/gamequarter.xml "http://www.gamequarter.be/rss/nieuws.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/games/insidegamer.xml "http://www.insidegamer.nl/feeds/latest-content/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/games/9lives.xml "http://www.9lives.be/rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/games/4gamers.xml "http://www.4gamers.be/rss/lijst"

php games.php > parts/games.part.new && mv parts/games.part.new parts/games.part

echo "done"

