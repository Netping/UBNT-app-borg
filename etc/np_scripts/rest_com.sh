echo -e "ping\nping\n" | passwd visor
cat <<EOF > /etc/netplan/00-installer-config.yaml
network:
  ethernets:
    `/etc/dksl-90-vars lan`:
      dhcp-identifier: mac
      dhcp4: true
  version: 2
EOF
