; atrust.com - internal file
$TTL 86400
$ORIGIN atrust.com.
@	3600	SOA	ns1.atrust.com	trent.atrust.com.	(
			2015110201	10800	1200	3600000		3600 )
	3600	NS	NS1.atrust.com.
	3600	NS	NS2.atrust.com.
ns1		A	10.10.1.2
ns2		A	10.10.1.3
host1		A	10.10.1.5
host2		A	10.10.1.6	
