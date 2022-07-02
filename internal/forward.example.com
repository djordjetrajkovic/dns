$TTL    604800

@       IN      SOA     ns.example.com. root.example.com. (
                              6         ; Serial
                         604820         ; Refresh
                          86600         ; Retry
                        2419600         ; Expire
                         604600 )       ; Negative Cache TTL

;Name Server Information
@       IN      NS      ns.example.com.

;IP address of Your Domain Name Server(DNS)
ns IN       A      192.168.1.2

;Mail Server MX (Mail exchanger) Record
example.com. IN  MX  10  mail.example.com.

;A Record for Host names
www     IN       A       192.168.1.50
mail    IN       A       192.168.1.60

;CNAME Record
ftp     IN      CNAME    www.example.com.
