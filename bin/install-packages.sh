packages=$(cat /etc/admindist/packages.txt)
{
    echo
    date
    killall synaptic;sleep 10
    for pack in $packages
    do
	apt-get -y --force-yes install $pack 
    done
    echo "Installation complete."
} &> /tmp/pack.install
