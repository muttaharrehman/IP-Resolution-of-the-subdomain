echo "-----------WELCOME TO THE IP RESOLUTION SCRIPT-------------"
echo
echo
echo "Please enter the valid domain name:"
echo
read url
echo
sublist3r -d $url -o result.txt
echo
echo "---------Subdomain Result----------"
echo
cat result.txt
echo
echo "---------IP RESOLUTION-------------"
echo
input="/home/kali/Desktop/Projects/result.txt"
echo
while IFS=  read -r path 
do
nslookup $path >> /home/kali/Desktop/Projects/ips.txt

done < "$input"
echo
echo "------Here is the IP Resolution of the Provided Subdomain list Saved-------"
