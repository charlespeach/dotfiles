#!/bin/bash
{
echo ""
echo "#############################################"
echo "DigitalOcean Network Benchmark v3"
echo "http://nwgat.ninja/dotest"
echo "brew install lftp if not already installed"
echo "#############################################"
echo ""
echo "Digitalocean NYC1 (New York City, United States)"
lftp -e 'pget -n 10  http://ipv4.speedtest-nyc1.digitalocean.com/100mb.test -o test.nyc1.100 && exit'
echo "Digitalocean NYC2 (New York City, United States)"
lftp -e 'pget -n 10  http://ipv4.speedtest-nyc2.digitalocean.com/100mb.test -o test.nyc2.100 && exit'
echo "Digitalocean NYC3 (New York City, United States)"
lftp -e 'pget -n 10  http://ipv4.speedtest-nyc3.digitalocean.com/100mb.test -o test.nyc3.100 && exit'
echo ""
echo "Digitalocean (San Fransisco, United States)"
lftp -e 'pget -n 10  http://ipv4.speedtest-sfo1.digitalocean.com/100mb.test -o test.sfo1.100 && exit'
echo ""
echo "Digitalocean AMS1 (Amsterdam, Europe)"
lftp -e 'pget -n 10  http://ipv4.speedtest-ams1.digitalocean.com/100mb.test -o test.ams1.100 && exit'
echo "Digitalocean AMS2 (Amsterdam, Europe)"
lftp -e 'pget -n 10  http://ipv4.speedtest-ams2.digitalocean.com/100mb.test -o test.ams2.100 && exit'
echo "Digitalocean AMS3 (Amsterdam, Europe)"
lftp -e 'pget -n 10  http://ipv4.speedtest-ams3.digitalocean.com/100mb.test -o test.ams3.100 && exit'
echo ""
echo "Digitalocean (London, Europe)"
lftp -e 'pget -n 10  http://ipv4.speedtest-lon1.digitalocean.com/100mb.test -o test.lon1.100 && exit'
echo ""
echo "Digitalocean (Francefort, Germany)"
lftp -e 'pget -n 10  http://ipv4.speedtest-fra1.digitalocean.com/100mb.test -o test.fra1.100 && exit'
echo ""
echo "Digitalocean (Singapore, Asia)"
lftp -e 'pget -n 10  http://ipv4.speedtest-sgp1.digitalocean.com/100mb.test -o test.sgp1.100 && exit'
echo ""
echo "Network Benchmark Score: (score is calulated from all the servers, the higher, the better)"
cat doresults.txt | awk '/second/ {print $7;}' | awk -F\( '{gsub("[,)]", " ", $NF); print $NF}' | awk '{for (i=1; i<=NF; i++) s=s+$i}; END{print s}'
echo ""

} 2>&1 | tee -a doresults.txt
