EASYRSA_DIR=~/easy-rsa

apt-get update
apt-get install -y easy-rsa
mkdir ${EASYRSA_DIR}
ln -s /usr/share/easy-rsa/* ${EASYRSA_DIR}/
ls /root
ls ${EASYRSA_DIR}
chmod 700 ${EASYRSA_DIR}
