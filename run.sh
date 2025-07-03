#!/bin/bash

pwd
# init infra


cd terraform
./init_infra.sh

cd ..

# to wait for Vm to finish starting
sleep 10

cd ansible
# ansible phase
./run_ansible.sh
cd ..

