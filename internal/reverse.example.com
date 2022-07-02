$TTL    604800
@       IN      SOA     example.com. root.example.com. (
                             21         ; Serial
                         604820         ; Refresh
                          864500        ; Retry
                        2419270         ; Expire
                         604880 )       ; Negative Cache TTL

;Your Name Server Info
@        IN      NS      primary.linuxtechi.local.
ns	 IN      A       192.168.1.2

;Reverse Lookup for Your DNS Server
2        IN      PTR     ns.example.com.

;PTR Record IP address to HostName
50      IN      PTR     www.example.com.
60      IN      PTR     mail.example.com.
