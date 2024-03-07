#!/bin/bash

echo "Installing assetfinder"
go install github.com/tomnomnom/assetfinder@latest
cd ~/go/bin/
sudo cp assetfinder /usr/local/bin
cd
echo "Done"

echo "Installing subfinder"
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
cd ~/go/bin/
sudo cp subfinder /usr/local/bin
cd
echo "Done"

echo "Installing amass"
go install github.com/OWASP/Amass/v3/...@latest
cd ~/go/bin/
sudo cp amass /usr/local/bin
cd
echo "done"

echo "Installing ShuffleDNS"
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
cd ~/go/bin/
sudo cp shuffledns /usr/local/bin
cd 
echo "Done"

echo "Installing httpx"
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
cd ~/go/bin/
sudo cp httpx /usr/local/bin
cd
echo "done"

nuclei -update-templates

sudo su
nuclei -update-templates

echo "Installing gxss"
go install github.com/KathanP19/Gxss@latest
cd ~/go/bin/
sudo cp Gxss /usr/local/bin
cd
echo "done"

echo " installing katana"
go install github.com/projectdiscovery/katana/cmd/katana@latest
cd ~/go/bin/
sudo cp katana /usr/local/bin
cd
echo "done"

echo "installing gau"
go install github.com/lc/gau/v2/cmd/gau@latest
cd ~/go/bin/
sudo cp gau /usr/local/bin
cd
echo "done"

echo " installing waybackurls"
go install github.com/tomnomnom/waybackurls@latest
cd ~/go/bin/
sudo cp waybackurls /usr/local/bin
cd
echo "done"

echo "installing hakrawler"
go install github.com/hakluke/hakrawler@latest
cd ~/go/bin/
sudo cp hakrawler /usr/local/bin
cd
echo "done"

echo "installing uro"
pip3 install uro
echo "done"
  
exit
