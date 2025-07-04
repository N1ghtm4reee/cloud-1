#!/bin/bash

terraform apply -auto-approve -lock=false


echo "[host]" > ../ansible/inventory/hosts.ini
terraform output machine_ip | tr -d '"' >> ../ansible/inventory/hosts.ini

MACHINE_IP=$(terraform output machine_ip | tr -d '"')
echo "Machine IP: $MACHINE_IP"

if [ -f "../inception/srcs/.env" ]; then
    sed -i "s|^URL_LOCALHOST=.*|URL_LOCALHOST=\"http://${MACHINE_IP}\"|" ../inception/srcs/.env
    echo "Updated .env with IP: $MACHINE_IP"
else
    echo "Warning: .env file not found at ../inception/srcs/.env"
fi
