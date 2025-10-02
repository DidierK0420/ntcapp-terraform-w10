#!/bin/bash
# sudo dnf update -y
# sudo dnf install httpd -y
# sudo systemctl start httpd
# sudo systemctl enable httpd
# echo "<html><h1><p> Welcome to Utrains.<br> You are redirected to ${HOSTNAME} to see how the load balancer is sharing the traffic.</p></h1></html>" | sudo tee /var/www/html/index.html

#!/bin/bash
sudo dnf update -y
sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Get the hostname first
HOSTNAME=$(hostname)
echo "<html><h1><p> Welcome to Utrains.<br> You are redirected to ${HOSTNAME}</p></h1></html>" | sudo tee /var/www/html/index.html


At work we have couple engineer running terraform code locally after making changes to the tf file. The goal is to set up some type of automation to help run those commands. 
since we are using github action already , do some research on how we can execute those terraform command thru a ci/cd pipeline. 
also check if there are some terraform scaning tool that can be integrated in the pipeline.