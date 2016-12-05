# punthoofd.be

This is the source for http://punthoofd.be

Punthoofd is a hack I did back in 2008, initially meant for personal purposes but online for all to witness. And it is exactly that, a hack. It's amazing it's been up and running for over 7 years now.

Every 15 minutes, the engine clusters news articles by using bag of words techniques (a cronjob runs `updatepunthoofd.sh`, it dumps billions of PHP notices, BTW). It's kind of organic and living on its own as it backfeeds the results of the previous data mining into the current iteration.

I don't really use Punthoofd anymore, so the site has been lacking updates for a long time. If you feel you can contribute, please do.

A few todos that are on the list:
* Update the RSS sources (e.g. in `hoofdpunten.php` and `hoofdpunten.sh`), many of them are defunct
* Seperate backend crawler/dataminer from frontend
* Code clean-up. This is an 8-year old hack.
* A reboot?

This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International](https://creativecommons.org/licenses/by-nc/4.0/) license.
