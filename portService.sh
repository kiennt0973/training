echo "input your port number want to check"
read p
sudo nmap -sT -O localhost | awk '{print $1" "$3}' | grep tcp > test.txt
if [[ `cat test.txt | grep $p` ]]; then
    echo `cat test.txt | grep $p`
else
    echo "### port not open and service not found"
fi