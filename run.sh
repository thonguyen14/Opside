#!/usr/bin/env bash
work_dir=$(cd `dirname $0`; pwd)
cd $work_dir
source ./values.env
echo $PASSWORD > ./config/wallet/wallet_pass.txt
if [ ! -f "./config/wallet/direct/accounts/all-accounts.keystore.json" ];then
./validator accounts import --wallet-dir $work_dir/config/wallet --keys-dir $work_dir/config/wallet --wallet-password-file $work_dir/config/wallet/wallet_pass.txt --account-password-file $work_dir/config/wallet/wallet_pass.txt --accept-terms-of-use
fi

# nohup ./validator \
# --accept-terms-of-use \
# --beacon-rpc-provider 127.0.0.1:4001 \
# --rpc \
# --grpc-gateway-host 127.0.0.1 \
# --grpc-gateway-port 7500 \
# --force-clear-db \
# --chain-config-file=./config/config.yaml \
# --suggested-fee-recipient=$WITHDRAWAL \
# --wallet-password-file=./config/wallet/wallet_pass.txt \
# --wallet-dir=./config/wallet/ 2>> ./logs/validator.log &

pubkey="0x$(cat $work_dir/config/wallet/keystore-* | jq -r .pubkey)"
if [ ! -f "${work_dir}/config/wallet/wallet_fee.json" ];then
sudo tee ${work_dir}/config/wallet/wallet_fee.json > /dev/null <<EOF
{
  "proposer_config": {
    "$pubkey": {
      "fee_recipient": "$WITHDRAWAL"
    }
  },
  "default_config": {
    "fee_recipient": "$WITHDRAWAL"
  }
}
EOF
fi


sudo tee /etc/systemd/system/opside-val.service > /dev/null <<EOF
[Unit]
Description=Opside geth
After=network-online.target

[Service]
User=$USER
ExecStart=${work_dir}/validator \
--accept-terms-of-use \
--beacon-rpc-provider 127.0.0.1:4001 \
--rpc \
--grpc-gateway-host 127.0.0.1 \
--grpc-gateway-port 7500 \
--force-clear-db \
--chain-config-file=${work_dir}/config/config.yaml \
--proposer-settings-file=${work_dir}/config/wallet/wallet_fee.json \
--wallet-password-file=${work_dir}/config/wallet/wallet_pass.txt \
--wallet-dir=${work_dir}/config/wallet/
Restart=on-failure
RestartSec=3
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable opside-val.service
#sudo systemctl restart opside-val.service
