# ECONOMIE

echo -n "Updating economie ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/gva.xml "http://www.gva.be/syndicationservices/artfeedservice.svc/rss/mostrecent/economie"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/demorgen.xml "http://www.demorgen.be/geldenzaken/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/knack1.xml "http://www.knack.be/feeds/72-nieuws-economie-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/knack2.xml "http://www.knack.be/feeds/72-nieuws-geldzaken-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/hln.xml "http://www.hln.be/geld/rss.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/nieuwsblad.xml "http://www.nieuwsblad.be/Rss.aspx?section=Economie"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/standaard.xml "http://feeds.feedburner.com/dso-nieuws-economie"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/belangvanlimburg.xml "http://www.hbvl.be/syndicationservices/artfeedservice.svc/rss/mostrecent/economie"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/msn.xml "http://news.be.msn.com/financieel/rss.aspx"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/skynet.xml "http://rss.mds.prd.skynet.be/News/RSS_nl_8.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/zita.xml "http://www.zita.be/xml/ondernemen.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/tijd1.xml "http://www.tijd.be/rss/ondernemingen.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/tijd2.xml "http://www.tijd.be/rss/markten.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/tijd3.xml "http://www.tijd.be/rss/economie.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/kanaalz1.xml "http://www.kanaalz.be/feeds/48-kanaalzheadlines-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/kanaalz2.xml "http://kanaalz.trends.be/nl/feeds/48-kanaalzbeursvandaag-article-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/deredactie.xml "http://www.deredactie.be/cm/de.redactie/economie?mode=atom"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/google.xml "http://news.google.be/?topic=b&output=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/trends1.xml "http://www.trends.be/feeds/4-1442-Trends.be+-+economie+&+e-business-section-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/trends2.xml "http://www.trends.be/feeds/4-239-Trends.be+-+economie+&+mensen-section-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/trends3.xml "http://www.trends.be/feeds/4-222-Trends.be+-+economie+&+bedrijven-section-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/trends4.xml "http://www.trends.be/feeds/4-1408-Trends.be+-+economie+&+beleid-section-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/trends5.xml "http://www.trends.be/feeds/4-231-Trends.be+-+economie+&+finance-section-rss2.0.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/nbb.xml "http://www.nbb.be/App/RSS/NewsRSS_NL.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/beursduivel.xml "http://www.beursduivel.be/rss/nieuwsfeed.php"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/economie/express.xml "http://www.express.be/community/nl/rss.htm"


php economie.php > parts/economie.part.new && mv parts/economie.part.new parts/economie.part

echo "done"

