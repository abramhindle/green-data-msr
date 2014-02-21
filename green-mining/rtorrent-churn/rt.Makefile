churns:
	mkdir churns
churns/rtorrent-0.3.0.tar.gz-rtorrent-0.4.0.tar.gz.csv:
	perl revchurn.pl rtorrent-0.3.0.tar.gz rtorrent-0.4.0.tar.gz | tee churns/rtorrent-0.3.0.tar.gz-rtorrent-0.4.0.tar.gz.csv 
churns/rtorrent-0.4.0.tar.gz-rtorrent-0.4.1.tar.gz.csv:
	perl revchurn.pl rtorrent-0.4.0.tar.gz rtorrent-0.4.1.tar.gz | tee churns/rtorrent-0.4.0.tar.gz-rtorrent-0.4.1.tar.gz.csv 
churns/rtorrent-0.4.1.tar.gz-rtorrent-0.5.0.tar.gz.csv:
	perl revchurn.pl rtorrent-0.4.1.tar.gz rtorrent-0.5.0.tar.gz | tee churns/rtorrent-0.4.1.tar.gz-rtorrent-0.5.0.tar.gz.csv 
churns/rtorrent-0.5.0.tar.gz-rtorrent-0.6.0.tar.gz.csv:
	perl revchurn.pl rtorrent-0.5.0.tar.gz rtorrent-0.6.0.tar.gz | tee churns/rtorrent-0.5.0.tar.gz-rtorrent-0.6.0.tar.gz.csv 
churns/rtorrent-0.6.0.tar.gz-rtorrent-0.7.0.tar.gz.csv:
	perl revchurn.pl rtorrent-0.6.0.tar.gz rtorrent-0.7.0.tar.gz | tee churns/rtorrent-0.6.0.tar.gz-rtorrent-0.7.0.tar.gz.csv 
churns/rtorrent-0.7.0.tar.gz-rtorrent-0.7.1.tar.gz.csv:
	perl revchurn.pl rtorrent-0.7.0.tar.gz rtorrent-0.7.1.tar.gz | tee churns/rtorrent-0.7.0.tar.gz-rtorrent-0.7.1.tar.gz.csv 
churns/rtorrent-0.7.1.tar.gz-rtorrent-0.7.2.tar.gz.csv:
	perl revchurn.pl rtorrent-0.7.1.tar.gz rtorrent-0.7.2.tar.gz | tee churns/rtorrent-0.7.1.tar.gz-rtorrent-0.7.2.tar.gz.csv 
churns/rtorrent-0.7.2.tar.gz-rtorrent-0.8.0.tar.gz.csv:
	perl revchurn.pl rtorrent-0.7.2.tar.gz rtorrent-0.8.0.tar.gz | tee churns/rtorrent-0.7.2.tar.gz-rtorrent-0.8.0.tar.gz.csv 
churns/rtorrent-0.8.0.tar.gz-rtorrent-0.8.1.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.0.tar.gz rtorrent-0.8.1.tar.gz | tee churns/rtorrent-0.8.0.tar.gz-rtorrent-0.8.1.tar.gz.csv 
churns/rtorrent-0.8.1.tar.gz-rtorrent-0.8.2.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.1.tar.gz rtorrent-0.8.2.tar.gz | tee churns/rtorrent-0.8.1.tar.gz-rtorrent-0.8.2.tar.gz.csv 
churns/rtorrent-0.8.2.tar.gz-rtorrent-0.8.3.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.2.tar.gz rtorrent-0.8.3.tar.gz | tee churns/rtorrent-0.8.2.tar.gz-rtorrent-0.8.3.tar.gz.csv 
churns/rtorrent-0.8.3.tar.gz-rtorrent-0.8.5.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.3.tar.gz rtorrent-0.8.5.tar.gz | tee churns/rtorrent-0.8.3.tar.gz-rtorrent-0.8.5.tar.gz.csv 
churns/rtorrent-0.8.5.tar.gz-rtorrent-0.8.6.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.5.tar.gz rtorrent-0.8.6.tar.gz | tee churns/rtorrent-0.8.5.tar.gz-rtorrent-0.8.6.tar.gz.csv 
churns/rtorrent-0.8.6.tar.gz-rtorrent-0.8.7.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.6.tar.gz rtorrent-0.8.7.tar.gz | tee churns/rtorrent-0.8.6.tar.gz-rtorrent-0.8.7.tar.gz.csv 
churns/rtorrent-0.8.7.tar.gz-rtorrent-0.8.8.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.7.tar.gz rtorrent-0.8.8.tar.gz | tee churns/rtorrent-0.8.7.tar.gz-rtorrent-0.8.8.tar.gz.csv 
churns/rtorrent-0.8.8.tar.gz-rtorrent-0.8.9.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.8.tar.gz rtorrent-0.8.9.tar.gz | tee churns/rtorrent-0.8.8.tar.gz-rtorrent-0.8.9.tar.gz.csv 
churns/rtorrent-0.8.9.tar.gz-rtorrent-0.9.0.tar.gz.csv:
	perl revchurn.pl rtorrent-0.8.9.tar.gz rtorrent-0.9.0.tar.gz | tee churns/rtorrent-0.8.9.tar.gz-rtorrent-0.9.0.tar.gz.csv 


all: all.csv churns/rtorrent-0.3.0.tar.gz-rtorrent-0.4.0.tar.gz.csv churns/rtorrent-0.4.0.tar.gz-rtorrent-0.4.1.tar.gz.csv churns/rtorrent-0.4.1.tar.gz-rtorrent-0.5.0.tar.gz.csv churns/rtorrent-0.5.0.tar.gz-rtorrent-0.6.0.tar.gz.csv churns/rtorrent-0.6.0.tar.gz-rtorrent-0.7.0.tar.gz.csv churns/rtorrent-0.7.0.tar.gz-rtorrent-0.7.1.tar.gz.csv churns/rtorrent-0.7.1.tar.gz-rtorrent-0.7.2.tar.gz.csv churns/rtorrent-0.7.2.tar.gz-rtorrent-0.8.0.tar.gz.csv churns/rtorrent-0.8.0.tar.gz-rtorrent-0.8.1.tar.gz.csv churns/rtorrent-0.8.1.tar.gz-rtorrent-0.8.2.tar.gz.csv churns/rtorrent-0.8.2.tar.gz-rtorrent-0.8.3.tar.gz.csv churns/rtorrent-0.8.3.tar.gz-rtorrent-0.8.5.tar.gz.csv churns/rtorrent-0.8.5.tar.gz-rtorrent-0.8.6.tar.gz.csv churns/rtorrent-0.8.6.tar.gz-rtorrent-0.8.7.tar.gz.csv churns/rtorrent-0.8.7.tar.gz-rtorrent-0.8.8.tar.gz.csv churns/rtorrent-0.8.8.tar.gz-rtorrent-0.8.9.tar.gz.csv churns/rtorrent-0.8.9.tar.gz-rtorrent-0.9.0.tar.gz.csv


all.csv: churns/rtorrent-0.3.0.tar.gz-rtorrent-0.4.0.tar.gz.csv churns/rtorrent-0.4.0.tar.gz-rtorrent-0.4.1.tar.gz.csv churns/rtorrent-0.4.1.tar.gz-rtorrent-0.5.0.tar.gz.csv churns/rtorrent-0.5.0.tar.gz-rtorrent-0.6.0.tar.gz.csv churns/rtorrent-0.6.0.tar.gz-rtorrent-0.7.0.tar.gz.csv churns/rtorrent-0.7.0.tar.gz-rtorrent-0.7.1.tar.gz.csv churns/rtorrent-0.7.1.tar.gz-rtorrent-0.7.2.tar.gz.csv churns/rtorrent-0.7.2.tar.gz-rtorrent-0.8.0.tar.gz.csv churns/rtorrent-0.8.0.tar.gz-rtorrent-0.8.1.tar.gz.csv churns/rtorrent-0.8.1.tar.gz-rtorrent-0.8.2.tar.gz.csv churns/rtorrent-0.8.2.tar.gz-rtorrent-0.8.3.tar.gz.csv churns/rtorrent-0.8.3.tar.gz-rtorrent-0.8.5.tar.gz.csv churns/rtorrent-0.8.5.tar.gz-rtorrent-0.8.6.tar.gz.csv churns/rtorrent-0.8.6.tar.gz-rtorrent-0.8.7.tar.gz.csv churns/rtorrent-0.8.7.tar.gz-rtorrent-0.8.8.tar.gz.csv churns/rtorrent-0.8.8.tar.gz-rtorrent-0.8.9.tar.gz.csv churns/rtorrent-0.8.9.tar.gz-rtorrent-0.9.0.tar.gz.csv
	head -n 1 churns/rtorrent-0.3.0.tar.gz-rtorrent-0.4.0.tar.gz.csv > all.csv
	tail -q -n 1 churns/rtorrent-0.3.0.tar.gz-rtorrent-0.4.0.tar.gz.csv churns/rtorrent-0.4.0.tar.gz-rtorrent-0.4.1.tar.gz.csv churns/rtorrent-0.4.1.tar.gz-rtorrent-0.5.0.tar.gz.csv churns/rtorrent-0.5.0.tar.gz-rtorrent-0.6.0.tar.gz.csv churns/rtorrent-0.6.0.tar.gz-rtorrent-0.7.0.tar.gz.csv churns/rtorrent-0.7.0.tar.gz-rtorrent-0.7.1.tar.gz.csv churns/rtorrent-0.7.1.tar.gz-rtorrent-0.7.2.tar.gz.csv churns/rtorrent-0.7.2.tar.gz-rtorrent-0.8.0.tar.gz.csv churns/rtorrent-0.8.0.tar.gz-rtorrent-0.8.1.tar.gz.csv churns/rtorrent-0.8.1.tar.gz-rtorrent-0.8.2.tar.gz.csv churns/rtorrent-0.8.2.tar.gz-rtorrent-0.8.3.tar.gz.csv churns/rtorrent-0.8.3.tar.gz-rtorrent-0.8.5.tar.gz.csv churns/rtorrent-0.8.5.tar.gz-rtorrent-0.8.6.tar.gz.csv churns/rtorrent-0.8.6.tar.gz-rtorrent-0.8.7.tar.gz.csv churns/rtorrent-0.8.7.tar.gz-rtorrent-0.8.8.tar.gz.csv churns/rtorrent-0.8.8.tar.gz-rtorrent-0.8.9.tar.gz.csv churns/rtorrent-0.8.9.tar.gz-rtorrent-0.9.0.tar.gz.csv >> all.csv
