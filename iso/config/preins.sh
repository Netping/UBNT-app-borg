if ls /cdrom/netping/ | grep borg
then
cp /cdrom/netping/borg /target/usr/local/bin/
cp /cdrom/netping/backup/restore.sh /target/backup/restore.sh
cp /cdrom/netping/backup/rest.sh /target/backup/
cp /cdrom/netping/backup/root /target/backup/
curtin in-target --target=/target -- bash /backup/restore.sh
cp /cdrom/netping/borg /target/usr/local/bin/
chmod +x /target/usr/local/bin/borg
if [ ! -d /target/backup/tmp ]; then mkdir /target/backup/tmp; fi
cp /cdrom/netping/backup/np_backup.sh /target/backup/
chmod 777 /target/backup/tmp
chmod +x /target/backup/np_backup.sh
else
echo "no borg"
fi
