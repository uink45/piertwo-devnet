#!/bin/bash

# Configuration
search_dir="/Users/multi/Documents/Projects/Devnet/piertwo-devnet2/consensus/genesis_validators/validator_keys"
keystore_pass_file="/Users/multi/Documents/Projects/Devnet/piertwo-devnet2/consensus/genesis_validators/passwords/keystore_pass.txt"
save_dir="$(dirname "${keystore_pass_file}")"

# Create new files with identical content to keystore_pass.txt
for file in "${search_dir}"/keystore*
do
    if [ -f "${file}" ]; then
        new_file="$(basename "${file}" .json)".txt
        cp "${keystore_pass_file}" "${save_dir}/${new_file}"
    fi
done