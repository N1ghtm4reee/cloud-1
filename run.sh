#!/bin/bash

pwd
# init infra


cd terraform
./init_infra.sh

cd ..

cd ansible
# ansible phase
./run_ansible.sh
cd ..

