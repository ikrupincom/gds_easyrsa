EASYRSA_DIR=~/easy-rsa

cd ${EASYRSA_DIR}

if [[ $1 == "init" ]]; then
    cp /input/vars ${EASYRSA_DIR}/
    ./easyrsa init-pki
    ./easyrsa build-ca
fi

if [[ $1 == "sign" ]]; then
    I_DIR=/input
    O_DIR=/output
    ./easyrsa import-req ${I_DIR}/$2.req $2
    ./easyrsa sign-req $3 $2
    cp pki/issued/$2.crt ${O_DIR}/$2.crt
fi

if [[ $1 == "get-ca" ]]; then
    O_DIR=/output
    cp pki/ca.crt ${O_DIR}/
fi

if [[ $1 == "revoke" ]]; then
    O_DIR=/output
    ./revoke_full $2
fi
