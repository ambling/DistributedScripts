iptables -D INPUT -p tcp -m state --state NEW -m tcp --dport 8649 -j ACCEPT
iptables -A INPUT -p tcp -m state --state NEW -m tcp --dport 8649 -j ACCEPT
iptables -D INPUT -p udp -m udp --dport 8649 -j ACCEPT
iptables -A INPUT -p udp -m udp --dport 8649 -j ACCEPT