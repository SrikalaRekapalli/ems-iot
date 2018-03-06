agent1_ip=fb.com
agent2_ip=google.com
sudo ping $agent1_ip &
sudo ping $agent2_ip &
sudo apt-get install -y nmap
while :
do
nping -c 1 --tcp -p 80,433 $agent1_ip
#curl $agent2_ip/dvwa/login.php -u admin:password
done 