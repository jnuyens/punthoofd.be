# RUBY

echo -n "Updating ruby ... "

wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/rubyinside.xml "http://www.rubyinside.com/feed/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/rubyflow.xml "http://feeds.feedburner.com/Rubyflow?format=xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/ridingrails.xml "http://feeds.feedburner.com/RidingRails"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/rubyonrails.xml "http://ruby.sys-con.com/index.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/rubylang.xml "http://www.ruby-lang.org/en/feeds/news.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/reddit.xml "http://www.reddit.com/r/ruby/.rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/katz.xml "http://yehudakatz.com/rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/aaa.xml "http://acts-as-architect.blogspot.com/feeds/posts/default?alt=rss"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/blogfish.xml "http://blog.innerewut.de/feed/atom.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/phusion.xml "http://blog.phusion.nl/feed/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/rubybest.xml "http://blog.rubybestpractices.com/feed.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/signalvsnoise.xml "http://feeds.feedburner.com/37signals/beMH"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/jasonseifer.xml "http://feeds.feedburner.com/jasonseifer"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/omgbloglol.xml "http://feeds.feedburner.com/omgbloglol"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/railsenvy.xml "http://feeds.feedburner.com/rails-envy"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/stjhimy.xml "http://feeds.feedburner.com/stjhimy"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/brandonaaron.xml "http://feeds2.feedburner.com/BrandonAaron"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/quarkruby.xml "http://feeds2.feedburner.com/Quarkruby"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/ryansscraps.xml "http://feeds2.feedburner.com/RyansScraps"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/binarylogic.xml "http://feeds2.feedburner.com/binarylogic"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/obiefernandez.xml "http://feeds2.feedburner.com/obie"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/spreenews.xml "http://feeds2.feedburner.com/spreehq"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/onrails.xml "http://onrails.org/xml/atom/feed.xml"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/railsdog.xml "http://railsdog.com/feed/"
wget --user-agent "Punthoofd.be" --timeout=10 -q -O xml/ruby/rubyreflector.xml "http://rubyreflector.com/feed.xml"


php ruby.php > parts/ruby.part.new && mv parts/ruby.part.new parts/ruby.part

echo "done"

