churns:
	mkdir churns
churns/libtorrent-0.10.0.tar.gz-libtorrent-0.11.0.tar.gz.csv:
	perl revchurn.pl libtorrent-0.10.0.tar.gz libtorrent-0.11.0.tar.gz | tee churns/libtorrent-0.10.0.tar.gz-libtorrent-0.11.0.tar.gz.csv 
churns/libtorrent-0.11.0.tar.gz-libtorrent-0.11.1.tar.gz.csv:
	perl revchurn.pl libtorrent-0.11.0.tar.gz libtorrent-0.11.1.tar.gz | tee churns/libtorrent-0.11.0.tar.gz-libtorrent-0.11.1.tar.gz.csv 
churns/libtorrent-0.11.1.tar.gz-libtorrent-0.11.2.tar.gz.csv:
	perl revchurn.pl libtorrent-0.11.1.tar.gz libtorrent-0.11.2.tar.gz | tee churns/libtorrent-0.11.1.tar.gz-libtorrent-0.11.2.tar.gz.csv 
churns/libtorrent-0.11.2.tar.gz-libtorrent-0.11.3.tar.gz.csv:
	perl revchurn.pl libtorrent-0.11.2.tar.gz libtorrent-0.11.3.tar.gz | tee churns/libtorrent-0.11.2.tar.gz-libtorrent-0.11.3.tar.gz.csv 
churns/libtorrent-0.11.3.tar.gz-libtorrent-0.11.5.tar.gz.csv:
	perl revchurn.pl libtorrent-0.11.3.tar.gz libtorrent-0.11.5.tar.gz | tee churns/libtorrent-0.11.3.tar.gz-libtorrent-0.11.5.tar.gz.csv 
churns/libtorrent-0.11.5.tar.gz-libtorrent-0.11.6.tar.gz.csv:
	perl revchurn.pl libtorrent-0.11.5.tar.gz libtorrent-0.11.6.tar.gz | tee churns/libtorrent-0.11.5.tar.gz-libtorrent-0.11.6.tar.gz.csv 
churns/libtorrent-0.11.6.tar.gz-libtorrent-0.12.0.tar.gz.csv:
	perl revchurn.pl libtorrent-0.11.6.tar.gz libtorrent-0.12.0.tar.gz | tee churns/libtorrent-0.11.6.tar.gz-libtorrent-0.12.0.tar.gz.csv 
churns/libtorrent-0.12.0.tar.gz-libtorrent-0.12.2.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.0.tar.gz libtorrent-0.12.2.tar.gz | tee churns/libtorrent-0.12.0.tar.gz-libtorrent-0.12.2.tar.gz.csv 
churns/libtorrent-0.12.2.tar.gz-libtorrent-0.12.5.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.2.tar.gz libtorrent-0.12.5.tar.gz | tee churns/libtorrent-0.12.2.tar.gz-libtorrent-0.12.5.tar.gz.csv 
churns/libtorrent-0.12.5.tar.gz-libtorrent-0.12.6.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.5.tar.gz libtorrent-0.12.6.tar.gz | tee churns/libtorrent-0.12.5.tar.gz-libtorrent-0.12.6.tar.gz.csv 
churns/libtorrent-0.12.6.tar.gz-libtorrent-0.12.7.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.6.tar.gz libtorrent-0.12.7.tar.gz | tee churns/libtorrent-0.12.6.tar.gz-libtorrent-0.12.7.tar.gz.csv 
churns/libtorrent-0.12.7.tar.gz-libtorrent-0.12.8.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.7.tar.gz libtorrent-0.12.8.tar.gz | tee churns/libtorrent-0.12.7.tar.gz-libtorrent-0.12.8.tar.gz.csv 
churns/libtorrent-0.12.8.tar.gz-libtorrent-0.12.9.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.8.tar.gz libtorrent-0.12.9.tar.gz | tee churns/libtorrent-0.12.8.tar.gz-libtorrent-0.12.9.tar.gz.csv 
churns/libtorrent-0.12.9.tar.gz-libtorrent-0.13.0.tar.gz.csv:
	perl revchurn.pl libtorrent-0.12.9.tar.gz libtorrent-0.13.0.tar.gz | tee churns/libtorrent-0.12.9.tar.gz-libtorrent-0.13.0.tar.gz.csv 
churns/libtorrent-0.13.0.tar.gz-libtorrent-0.7.0.tar.gz.csv:
	perl revchurn.pl libtorrent-0.13.0.tar.gz libtorrent-0.7.0.tar.gz | tee churns/libtorrent-0.13.0.tar.gz-libtorrent-0.7.0.tar.gz.csv 
churns/libtorrent-0.7.0.tar.gz-libtorrent-0.8.0.tar.gz.csv:
	perl revchurn.pl libtorrent-0.7.0.tar.gz libtorrent-0.8.0.tar.gz | tee churns/libtorrent-0.7.0.tar.gz-libtorrent-0.8.0.tar.gz.csv 
churns/libtorrent-0.8.0.tar.gz-libtorrent-0.9.0.tar.gz.csv:
	perl revchurn.pl libtorrent-0.8.0.tar.gz libtorrent-0.9.0.tar.gz | tee churns/libtorrent-0.8.0.tar.gz-libtorrent-0.9.0.tar.gz.csv 


all: all.csv churns/libtorrent-0.10.0.tar.gz-libtorrent-0.11.0.tar.gz.csv churns/libtorrent-0.11.0.tar.gz-libtorrent-0.11.1.tar.gz.csv churns/libtorrent-0.11.1.tar.gz-libtorrent-0.11.2.tar.gz.csv churns/libtorrent-0.11.2.tar.gz-libtorrent-0.11.3.tar.gz.csv churns/libtorrent-0.11.3.tar.gz-libtorrent-0.11.5.tar.gz.csv churns/libtorrent-0.11.5.tar.gz-libtorrent-0.11.6.tar.gz.csv churns/libtorrent-0.11.6.tar.gz-libtorrent-0.12.0.tar.gz.csv churns/libtorrent-0.12.0.tar.gz-libtorrent-0.12.2.tar.gz.csv churns/libtorrent-0.12.2.tar.gz-libtorrent-0.12.5.tar.gz.csv churns/libtorrent-0.12.5.tar.gz-libtorrent-0.12.6.tar.gz.csv churns/libtorrent-0.12.6.tar.gz-libtorrent-0.12.7.tar.gz.csv churns/libtorrent-0.12.7.tar.gz-libtorrent-0.12.8.tar.gz.csv churns/libtorrent-0.12.8.tar.gz-libtorrent-0.12.9.tar.gz.csv churns/libtorrent-0.12.9.tar.gz-libtorrent-0.13.0.tar.gz.csv churns/libtorrent-0.13.0.tar.gz-libtorrent-0.7.0.tar.gz.csv churns/libtorrent-0.7.0.tar.gz-libtorrent-0.8.0.tar.gz.csv churns/libtorrent-0.8.0.tar.gz-libtorrent-0.9.0.tar.gz.csv


all.csv: churns/libtorrent-0.10.0.tar.gz-libtorrent-0.11.0.tar.gz.csv churns/libtorrent-0.11.0.tar.gz-libtorrent-0.11.1.tar.gz.csv churns/libtorrent-0.11.1.tar.gz-libtorrent-0.11.2.tar.gz.csv churns/libtorrent-0.11.2.tar.gz-libtorrent-0.11.3.tar.gz.csv churns/libtorrent-0.11.3.tar.gz-libtorrent-0.11.5.tar.gz.csv churns/libtorrent-0.11.5.tar.gz-libtorrent-0.11.6.tar.gz.csv churns/libtorrent-0.11.6.tar.gz-libtorrent-0.12.0.tar.gz.csv churns/libtorrent-0.12.0.tar.gz-libtorrent-0.12.2.tar.gz.csv churns/libtorrent-0.12.2.tar.gz-libtorrent-0.12.5.tar.gz.csv churns/libtorrent-0.12.5.tar.gz-libtorrent-0.12.6.tar.gz.csv churns/libtorrent-0.12.6.tar.gz-libtorrent-0.12.7.tar.gz.csv churns/libtorrent-0.12.7.tar.gz-libtorrent-0.12.8.tar.gz.csv churns/libtorrent-0.12.8.tar.gz-libtorrent-0.12.9.tar.gz.csv churns/libtorrent-0.12.9.tar.gz-libtorrent-0.13.0.tar.gz.csv churns/libtorrent-0.13.0.tar.gz-libtorrent-0.7.0.tar.gz.csv churns/libtorrent-0.7.0.tar.gz-libtorrent-0.8.0.tar.gz.csv churns/libtorrent-0.8.0.tar.gz-libtorrent-0.9.0.tar.gz.csv
	head -n 1 churns/libtorrent-0.10.0.tar.gz-libtorrent-0.11.0.tar.gz.csv > all.csv
	tail -q -n 1 churns/libtorrent-0.10.0.tar.gz-libtorrent-0.11.0.tar.gz.csv churns/libtorrent-0.11.0.tar.gz-libtorrent-0.11.1.tar.gz.csv churns/libtorrent-0.11.1.tar.gz-libtorrent-0.11.2.tar.gz.csv churns/libtorrent-0.11.2.tar.gz-libtorrent-0.11.3.tar.gz.csv churns/libtorrent-0.11.3.tar.gz-libtorrent-0.11.5.tar.gz.csv churns/libtorrent-0.11.5.tar.gz-libtorrent-0.11.6.tar.gz.csv churns/libtorrent-0.11.6.tar.gz-libtorrent-0.12.0.tar.gz.csv churns/libtorrent-0.12.0.tar.gz-libtorrent-0.12.2.tar.gz.csv churns/libtorrent-0.12.2.tar.gz-libtorrent-0.12.5.tar.gz.csv churns/libtorrent-0.12.5.tar.gz-libtorrent-0.12.6.tar.gz.csv churns/libtorrent-0.12.6.tar.gz-libtorrent-0.12.7.tar.gz.csv churns/libtorrent-0.12.7.tar.gz-libtorrent-0.12.8.tar.gz.csv churns/libtorrent-0.12.8.tar.gz-libtorrent-0.12.9.tar.gz.csv churns/libtorrent-0.12.9.tar.gz-libtorrent-0.13.0.tar.gz.csv churns/libtorrent-0.13.0.tar.gz-libtorrent-0.7.0.tar.gz.csv churns/libtorrent-0.7.0.tar.gz-libtorrent-0.8.0.tar.gz.csv churns/libtorrent-0.8.0.tar.gz-libtorrent-0.9.0.tar.gz.csv >> all.csv