if ls /dev/ | grep `/etc/dksl-90-vars tty`
then touch /tmp/testcon && bash /etc/np_scripts/while.sh &
else echo "NO"
fi
