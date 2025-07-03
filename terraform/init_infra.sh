#!/bin/bash

terraform apply -auto-approve


echo "[host]" > ../ansible/inventory/hosts.ini
terraform output machine_ip | tr -d '"' >> ../ansible/inventory/hosts.ini
