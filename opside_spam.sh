#!/bin/bash 

language_type=3

read -p "Your EVM withdraw addr: " withdrawal 
read -p "Your password: " password

./opside-chain/tools/deposit --language $language_type new-mnemonic --mnemonic_language 4 --num_validators 1 --chain testnet --eth1_withdrawal_address $withdrawal --keystore_password $password

#./opside-chain/tools/deposit --language $language_type existing-mnemonic --num_validators 1 --chain testnet --eth1_withdrawal_address $withdrawal --keystore_password $password


mkdir validator_keys/$withdrawal
mv validator_keys/*.json validator_keys/$withdrawal
pubkey="0x$(cat validator_keys/${withdrawal}/keystore-* | jq -r .pubkey)"

echo -e "\nYour EVM address: $withdrawal \n"
echo -e "\nYour validator pubkey: $pubkey \n"

cp validator_keys/$withdrawal/keystore-* ./opside-chain/prysm/validator/config/wallet/
sed -i.bak -e "s/^    }$/    },\n    \"$pubkey\": {\n      \"fee_recipient\": \"$withdrawal\"\n    }/" ./opside-chain/prysm/validator/config/wallet/wallet_fee.json

systemctl stop opside-val
mv ./opside-chain/prysm/validator/config/wallet/direct/accounts/all-accounts.keystore.json ./opside-chain/prysm/validator/config/wallet/direct/accounts/all-accounts.keystore.json_bak


cd ./opside-chain/prysm/validator/
./validator accounts import --wallet-dir ./config/wallet --keys-dir ./config/wallet --wallet-password-file ./config/wallet/wallet_pass.txt --account-password-file ./config/wallet/wallet_pass.txt --accept-terms-of-use


./validator accounts list --wallet-dir ./config/wallet --wallet-password-file ./config/wallet/wallet_pass.txt  --accept-terms-of-use

systemctl restart opside-val
