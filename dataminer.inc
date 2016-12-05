<?php

include_once( 'misc.inc' );

function generatePassword( $length = 6 )
{

  // start with a blank password
  $password = "";

  // define possible characters
  $possible = "0123456789abcdfghjkmnpqrstvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
    
  // set up a counter
  $i = 0; 
    
  // add random characters to $password until $length is reached
  while ($i < $length) { 

    // pick a random character from the possible ones
    $char = substr($possible, mt_rand(0, strlen($possible)-1), 1);
        
    // we don't want this character if it's already in the password
    $password .= $char;
    $i++;

  }

  // done!

  return $password;

}

class NewsItem {
	var $title, $link, $description, $image = "", $date, $related, $guid;
	var $bag;

	function tokenize() {
		$allwords = strtolower( ereg_replace("[^A-Za-z \n\t]", "", $this->title . " " . $this->title . " " . $this->description ) ); 

		$tok = strtok($allwords, " \n\t");
		while ($tok !== false) {
			if( strlen( $tok ) > 3 ) {
				if(
					( $tok != 'lees' ) &&
					( $tok != 'verder' ) &&
					( $tok != 'wwwstandaardbe' )
				) {
					$this->bag[ $tok ]++;
				}
			}
			$tok = strtok(" \n\t");
			}
		$sum = 0;
		if( count( $this->bag ) > 0 ) {
			foreach( $this->bag as $item => $value) {
				$sum += $value * $value;
			}
			foreach( $this->bag as $item => $value) {
				$this->bag[ $item ] = $value / sqrt( $sum );
			}
		}
	}
	
	function value( $word ) {
		return $bag[ $word ];
	}
}

$newsitems = array();
$newsfeeds = 0;

require_once('simplepie.inc');

function parse( $filename, $src ) {
	global $newsfeeds;
	$newsfeeds++;
	$feed = new SimplePie($filename);
	$feed->handle_content_type();
	$count = 0;
	foreach ($feed->get_items() as $item) {
		if( $count < 50 ) {
			$newsitem = new NewsItem();
			if( ereg( "http://[^>]*jpg", $item->get_description(), $regs ) ) 
			if( !ereg( "http://[^>]*rss\.jpg", $item->get_description(), $regs ) ) {
				$newsitem->image = preg_replace( "/%2520/", "%20", preg_replace( "/news.google.com\/[^;]*[^=]*=/", "", $regs[ 0 ] ) );
			}
			$newsitem->description = trim( strip_tags( $item->get_description() ) );
			if( substr( $newsitem->description, 0, 7 ) == "(Belga)" )
				$newsitem->description = substr( $newsitem->description, 8, strlen( $newsitem->description ) - 8 );
			$newsitem->title = trim( $item->get_title() );
			$newsitem->link = trim( $item->get_permalink() );
			$newsitem->guid = $item->get_id();
			$newsitem->date = $item->get_date( $date_format = 'U' );
			if( $newsitem->date > time() )
				$newsitem->date = time();
			$newsitem->source = $src;
			global $newsitems;
			$newsitems[] = $newsitem;
		}
		$count++;
	}
}

function debug( $filename ) {
	$feed = new SimplePie($filename);
	$feed->handle_content_type();
	foreach ($feed->get_items() as $item) {
		if( $count < 50 ) {
			$newsitem = new NewsItem();
			if( ereg( "http://[^>]*jpg", $item->get_description(), $regs ) ) 
			if( !ereg( "http://[^>]*rss\.jpg", $item->get_description(), $regs ) ) {
				$newsitem->image = preg_replace( "/%2520/", "%20", preg_replace( "/news.google.com\/[^;]*[^=]*=/", "", $regs[ 0 ] ) );
			}
			$newsitem->description = trim( strip_tags( $item->get_description() ) );
			if( substr( $newsitem->description, 0, 7 ) == "(Belga)" )
				$newsitem->description = substr( $newsitem->description, 8, strlen( $newsitem->description ) - 8 );
			$newsitem->title = trim( $item->get_title() );
			$newsitem->link = trim( $item->get_permalink() );
			$newsitem->guid = $item->get_id();
			$newsitem->date = $item->get_date( $date_format = 'U' );
			if( $newsitem->date > time() )
				$newsitem->date = time();
			echo( "*** " . $newsitem->title . " (" . date( 'D, d M Y H:i:s', $newsitem->date ) . ")\n\n" );
			echo( $newsitem->description . "\n" );
			echo( $newsitem->link . "\n\n" );
		}
	}
}

function dataMine( $page = "", $filename = "/dev/null", $rubriektitle = "" ) {

	global $newsitems;
	
	foreach( $newsitems as $newsitem ) {
		$newsitem->tokenize();
	}
	
	// find couples of similar news items and put them in sets
	$sets = array();
	for( $i = 0; $i < count( $newsitems ) - 1; $i++ ) {
		for( $j = $i + 1; $j < count( $newsitems ); $j++ ) {

			// compute similarity
			
			$sum = 0;
			if( count( $newsitems[ $i ]->bag ) > 0 )
			foreach( $newsitems[ $i ]->bag as $word => $value ) {
				if( array_key_exists ( $word , $newsitems[ $j ]->bag ) ) {
					$sum += $newsitems[ $i ]->bag[ $word ] * $newsitems[ $j ]->bag[ $word ];
				}
			}

			// is similarity > threshold => this is a couple, save it as a set
			
			if( ( $sum > 0.50 ) && ( $newsitems[ $i ]->source != $newsitems[ $j ]->source ) ) {
				$sets[] = array( $i, $j );
			}
		}
	}
	
	// form clusters by merging sets that have news items in common
	$done = false;
	while( !$done ) {
		$done = true;
		for( $i = 0; $i < count( $sets ) - 1; $i++ ) {
			
			for( $j = $i + 1; $j < count( $sets ); $j++ ) {
				
				if( count( $sets[$j] ) )
				foreach( $sets[ $j ] as $item ) {
					
					if( count( $sets[$i] ) )
					if( in_array( $item, $sets[ $i ] ) ) {
						// merge set sets[ $j ] into sets[ $i ]
						if( count( $sets[ $j ] ) )
						foreach( $sets[ $j ] as $item2 )
							if( !in_array( $item2, $sets[ $i ] ) )
								$sets[ $i ][] = $item2;
						unset( $sets[ $j ] );
						$done = false;
					}
					
				}
			
			}
			
		}
	}

	// select the news clusters of interest, summarize them as news items and prepare them for publication
	// we save the resulting news items in two hashes, resultItems with the actual items, results keeps the newsworthiness for sorting
	
	$count = 0;
	$results = array();
	$resultItems = array();
	for( $s = 0; $s < count( $sets ); $s++ ) {
		
		$set = $sets[ $s ];

		$itemsinset = 0;
		if( count( $set ) > 0 )
		foreach( $set as $i )
			if( $newsitems[$i]->source != "Punthoofd" )
				$itemsinset += 1;
	
		if( count( $set ) > 1 ) {

			$count ++;
			$title = "";
			$description = "";
			$image = "";
			$imagelink = "";
			$mainitem = 0;
			$dateaverage = 0;
			$datecount = 0;
			$result = "";
			$latestdescriptiondate = 0;
			$guid = "";

			// find representatives for this set

			foreach( $set as $i ) {
				$item = $newsitems[ $i ];
				if( $item->source != "Google News" )
				if( $item->source != "Punthoofd" )
				if( $item->source != "Advalvas" )
				if( $item->source != "Skynet" ) 
				if( $item->source != "Guardian" ) {
					if( 
						( $item->date != "" ) && 
						( $item->date > $latestdescriptiondate ) && 
						( strlen( $item->description ) > 0 )
					) {
						$mainitem = $item;
						$latestdescriptiondate = $item->date;
					}
				}
				if( $item->source == "Punthoofd" ) {
					$guid = $item->guid;
				}
				if( $item->image != "" ) {
					$image = "<img src=\"" . $item->image . "\" alt=\"" . $item->title . "\" style=\"float: right;clear: right;margin:10px 0px 10px 10px;\" width=\"100px\"/>";
				}
				if( $item->date != "" ) {
					$dateaverage += $item->date;
					$datecount++;
				}
			}
			
			// let's create a newsitem to serve as our resulting news item

			$resultitem = $mainitem;

			if( $resultitem ) {

				// let's add some extras from the clustering
				if( $guid == "" )
					$guid = "http://punthoofd.be/?page=" . $page . "#" . generatePassword();
				$resultitem->guid = $guid;

				if( !$resultitem->description )
					$resultitem->description = "";
				$resultitem->description = "<p>" . $resultitem->description . " (<a href=\"". $resultitem->link . "\" target=\"_BLANK\">" . $resultitem->source . "</a> " . date( 'd/m H:i', $resultitem->date ) . ")</p>";

				$relatedcount = 0;
				$resultitem->related_extra .= "<p class=\"small\">";
				$resultitem->related .= "<p class=\"small\">&#187;&nbsp;";
				foreach( $set as $item ) {
					if( $newsitems[ $item ]->source != "Punthoofd" ) {
						if( $relatedcount < 5 ) {
							$resultitem->related_extra .= "&#187;&nbsp;<a href=\"" . $newsitems[ $item ]->link . "\" target=\"_BLANK\">" . $newsitems[ $item ]->title . "</a> (" . $newsitems[ $item ]->source . " " . date( 'd/m H:i', $newsitems[ $item ]->date ) . ")<br/>";
						}
						$resultitem->related .= "<a href=\"" . $newsitems[ $item ]->link . "\" title=\"" .$newsitems[ $item ]->title . "\" target=\"_BLANK\">" . $newsitems[ $item ]->source . "</a> &nbsp;";
						$relatedcount += 1;
						if( count( $item->bag ) )
							foreach( $item->bag as $word => $value ) {
								$resultitem->bag[ $word ] += $value;
							}
					}
				}
				$resultitem->related_extra .= "</p>";
				$resultitem->related .= "</p>\n";

				$resultitem->link = $mainitem->link;
				
				// add an image if we have found one
				$resultitem->image = $image;
				
				// determine a time for this object, for sorting
				$time = 0;
				if( $datecount != 0 )
					$time = ( $dateaverage / $datecount );
					
				// give a bonus of 10 minutes for each item in this set
				$time += 6000 * count ( $set );
				
				// save the new newsitem to the results list
				$resultitems[ $count ] = $resultitem;
				$results[ $count ] = $time;
				
			}

		}
	
	}

	// write the RSS header to the RSS file

	$rssfeed = fopen( $filename, "w" );
	$rssfeedfull = fopen( $filename . ".full", "w" );

	$rssheader = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<rss version=\"2.0\">

<channel>

<title>Punthoofd - " . $rubriektitle . "</title>
<description>Punthoofd is een geautomatiseerde journalist die het hete huidige nieuws in het Belgische perslandschap bij elkaar zoekt, en samenvat. Lees meer op http://punthoofd.be</description>
<language>nl-be</language>
<link>http://punthoofd.be</link>
<managingEditor>anthony@liekens.net</managingEditor>
<pubDate>" . date( 'D, d M Y H:i:00 CET' ) . "</pubDate>
<lastBuildDate>" . date( 'D, d M Y H:i:00 CET' ) . "</lastBuildDate>
<generator>Punthoofd.be</generator>
<ttl>20</ttl>

";

	fwrite( $rssfeed, $rssheader );
	fwrite( $rssfeedfull, $rssheader );

	// write the sorted items to the output as HTML and to the RSS file as <item>s

	if( $count == 0 ) {
		print "<p>Er zijn momenteel geen berichten te vinden in deze rubriek</p>";
	} else {
		arsort( $results );
		$count = 0;
		foreach( $results as $i => $date ) {
			$html = "";
			$item = $resultitems[ $i ];
			$clusterid = $item->guid;
			$clusterid = strchr( $clusterid, "#" );
			$clusterid = substr( $clusterid, 1, strlen( $clusterid )-1 );

			$html .= "\n\n<a name=\"" . $clusterid . "\"></a>\n\n";
			$html .= "<div class=\"newsitem\">\n\n\t<div class=\"newsitemWatermark\">"; $html .= sprintf("%02d", $count+1 ) . "</div>\n\n";
			if( $item->image != "" ) {
				$html.= "\t" . $item->image . "\n\n";
			}
			$html .= "\t<h3>" . $item->title . "</h3>\n\n";
			$html .= "\t" . $item->description . "\n\n";
			if( $count == 0 )
				$html .= "\t" . $item->related_extra . "\n\n";
			$html .= "\t" . $item->related . "\n\n";
			// $html .= "Tags&nbsp;&#187;&nbsp;";
			//arsort( $item->bag );
			//$tagcount = 0;
			//foreach( $item->bag as $word => $value ) {
			//	if( $tagcount < 5 )
			//		$html .= $word . "&nbsp;";
			//	$tagcount++;
			//}
			$html .= "</div>\n";
			if( $count % 5 == 4 ) {
				$html .= '<div class="newsitem">
						<br/>
						<script type="text/javascript"><!--
						google_ad_client = "pub-7726730941948502";
						/* 728x90, created 3/25/08 */
						google_ad_slot = "0128848010";
						google_ad_width = 728;
						google_ad_height = 90;
						//-->
						</script>
						<script type="text/javascript"
						src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
						</script>
					</div>';
			}
			if( $item->description ) {
				$rssitem = "<item>\n";
				$rssitem .= "\t<title>" . htmlspecialchars( $item->title ) . "</title>\n";
				$rssitem .= "\t<description>" . htmlspecialchars( $item->image . $item->description ) . "</description>\n";
				$rssitem .= "\t<link>" . $item->link . "</link>\n";
				$rssitem .= "\t<source>" . $item->link . "</source>\n";
				$rssitem .= "\t<guid>" . $item->guid . "</guid>\n";
				$rssitem .= "\t<pubDate>" . date( 'D, d M Y H:i:s CET', $item->date ) . "</pubDate>\n";
				$tagcount = 0;
				foreach( $item->bag as $word => $value ) {
					if( $tagcount < 5 )
						$rssitem .= "\t<category>" . $word . "</category>\n";
					$tagcount++;
				}
				$rssitem .= "</item>\n\n";
				fwrite( $rssfeedfull, $rssitem );
				if( $count < 3 )
					fwrite( $rssfeed, $rssitem );
				if( $count < 10 )
					print $html;
			}
			$count++;
		}
	}
	
	fwrite( $rssfeed, "</channel></rss>\n" );	
	fclose( $rssfeed );
	fwrite( $rssfeedfull, "</channel></rss>\n" );	
	fclose( $rssfeedfull );
	
}

?>