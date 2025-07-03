#!/bin/bash

terraform apply -auto-approve -lock=false


echo "[host]" > ../ansible/inventory/hosts.ini
terraform output machine_ip | tr -d '"' >> ../ansible/inventory/hosts.ini
