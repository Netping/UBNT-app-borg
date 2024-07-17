tty=`/etc/dksl-90-vars tty`
cat < /dev/$tty >> /tmp/testcon &
sleep 5
#while [ condition ]
while :
do
#echo "ON" >> /dev/$tty
echo "ON" >> /dev/null
sleep 5
if cat /tmp/testcon | grep 1
then bash /etc/np_scripts/rest_com.sh && break
else echo "NO" > /dev/null
fi
done
