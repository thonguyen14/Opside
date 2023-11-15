#!/usr/bin/env bash
work_dir=$(cd `dirname $0`; pwd)
cd $work_dir
source ./values.env

# nohup ./beacon-chain \
# --accept-terms-of-use \
# --verbosity=debug \
# --datadir=./data \
# --bootstrap-node=enr:-Ly4QFyAO5GxeOJGN6hG4WA1dQhElIC0a7zJ3ubsY0CgQdqeVCadP2rvT8HnGHwYflSNCrauYQ5CiPBQQTgFLN6XLS8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMKJc2VjcDI1NmsxoQLfgNv-MEDboBtggcyXrVfJZa2m7rA6bIs20EY3i1Qv8IhzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QH2M6kV52yGPECAihMtsWj8I8g2z_a_2xEAgn9QNhZQsMgLu7DoNJtQNqCzoDGRupTX_Z2KOc_fUIXwJ02zzQZABh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMGJc2VjcDI1NmsxoQNujSVDOEVLwX2IEgZKMK4Yy6YhqifYCwvpSUidq4KZb4hzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QBoTNzPzknXK7SRKjte7xo1JtC6M9QOXz1m-Wt_YWcZHdsGAiENz8htIipeAL2pGcNqFxNlHZDWw8FT05_yYLP0Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMaJc2VjcDI1NmsxoQI0VlIncd5rKbm0vLEQ8gf8g9MZLZEvwat3hqf8Ba8YCYhzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QO7sWAQ1xFuMRfKJl8eXM0uefwecOGcY1UiMTMp_Bu-6Lc7CGBdDplskYEUWbF-W42IgcbkYz6-2atc1MhNdHTwBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMWJc2VjcDI1NmsxoQOHHeKtHS9XY9lD8L-_fxqA8m9kOLelQLSeLTP-FGC2kYhzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QGRsXXHq7EShMYz1CT2pzbLQUCny2V4KUypVyXY1tAUWJNE2EgvAx92-MfCjOmyJ2vM7z8H0hotmADc5Sy-ot28Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhCzLOhmJc2VjcDI1NmsxoQNvfD3GiIcQaeAH_BvBLidsZ8VvAPG66oAiaTxD1FnrhohzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QIXEF3KIEgYgmCBEKGQl9vJ75A0T1NNWeuQiOVquBNEOdWoCgZTCk9qlvGn-127gNrkuwHzb8ulY00BdF5rpHVMBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhBLQmTiJc2VjcDI1NmsxoQK-MdfcwTt06QP6kqmmTrpZe5wtRnpJGKvw8NXT_jQ6R4hzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QIzF4h2l49P5JsTtcZgNGbbUeg_RwXsd6lBLHLlSYseKNYXUD6daEIjyFpWm0WZqeiSV3il255cYzLIzs3E68BcBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhCzJsnuJc2VjcDI1NmsxoQKqUffMerb1PHEFrxEuVCuijHvFBz5vCBSjawfZaWp0a4hzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --bootstrap-node=enr:-Ly4QH8aODi2IxKIn9Gx9kGotdJuPcgM6obnVxerTGdGdf5hFVS4E8_-wkR4Yx2-FN0k1TWwfLPHpBcwD0fZClqvwzQBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhCLkuviJc2VjcDI1NmsxoQKeNYknrQ_uc6B2EqkbmBkgddlOVRf5c6c_14l-TU3NeohzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
# --checkpoint-sync-url=http://159.135.192.192:10004 \
# --genesis-beacon-api-url=http://159.135.192.192:10004 \
# --execution-endpoint=http://127.0.0.1:8551 \
# --jwt-secret=./config/jwtsecret \
# --chain-config-file=./config/config.yaml \
# --contract-deployment-block 0 \
# --deposit-contract=0x4242424242424242424242424242424242424242 \
# --p2p-local-ip=0.0.0.0 \
# --p2p-max-peers=100 \
# --p2p-tcp-port=13000 \
# --p2p-udp-port=12000 \
# --rpc-host=127.0.0.1 \
# --rpc-port=4001 \
# --grpc-gateway-host=127.0.0.1 \
# --grpc-gateway-port=3500 \
# --enable-debug-rpc-endpoints \
# --min-sync-peers=1 \
# --suggested-fee-recipient=$WITHDRAWAL 2>> ./logs/beacon-chain.log &


sudo tee /etc/systemd/system/opside-beacon.service > /dev/null <<EOF
[Unit]
Description=Opside geth
After=network-online.target

[Service]
User=$USER
ExecStart=${work_dir}/beacon-chain \
--accept-terms-of-use \
--verbosity=debug \
--datadir=${work_dir}/data \
--bootstrap-node=enr:-Ly4QFyAO5GxeOJGN6hG4WA1dQhElIC0a7zJ3ubsY0CgQdqeVCadP2rvT8HnGHwYflSNCrauYQ5CiPBQQTgFLN6XLS8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMKJc2VjcDI1NmsxoQLfgNv-MEDboBtggcyXrVfJZa2m7rA6bIs20EY3i1Qv8IhzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QH2M6kV52yGPECAihMtsWj8I8g2z_a_2xEAgn9QNhZQsMgLu7DoNJtQNqCzoDGRupTX_Z2KOc_fUIXwJ02zzQZABh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMGJc2VjcDI1NmsxoQNujSVDOEVLwX2IEgZKMK4Yy6YhqifYCwvpSUidq4KZb4hzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QBoTNzPzknXK7SRKjte7xo1JtC6M9QOXz1m-Wt_YWcZHdsGAiENz8htIipeAL2pGcNqFxNlHZDWw8FT05_yYLP0Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMaJc2VjcDI1NmsxoQI0VlIncd5rKbm0vLEQ8gf8g9MZLZEvwat3hqf8Ba8YCYhzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QO7sWAQ1xFuMRfKJl8eXM0uefwecOGcY1UiMTMp_Bu-6Lc7CGBdDplskYEUWbF-W42IgcbkYz6-2atc1MhNdHTwBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhJ-HwMWJc2VjcDI1NmsxoQOHHeKtHS9XY9lD8L-_fxqA8m9kOLelQLSeLTP-FGC2kYhzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QGRsXXHq7EShMYz1CT2pzbLQUCny2V4KUypVyXY1tAUWJNE2EgvAx92-MfCjOmyJ2vM7z8H0hotmADc5Sy-ot28Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhCzLOhmJc2VjcDI1NmsxoQNvfD3GiIcQaeAH_BvBLidsZ8VvAPG66oAiaTxD1FnrhohzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QIXEF3KIEgYgmCBEKGQl9vJ75A0T1NNWeuQiOVquBNEOdWoCgZTCk9qlvGn-127gNrkuwHzb8ulY00BdF5rpHVMBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhBLQmTiJc2VjcDI1NmsxoQK-MdfcwTt06QP6kqmmTrpZe5wtRnpJGKvw8NXT_jQ6R4hzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QIzF4h2l49P5JsTtcZgNGbbUeg_RwXsd6lBLHLlSYseKNYXUD6daEIjyFpWm0WZqeiSV3il255cYzLIzs3E68BcBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhCzJsnuJc2VjcDI1NmsxoQKqUffMerb1PHEFrxEuVCuijHvFBz5vCBSjawfZaWp0a4hzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--bootstrap-node=enr:-Ly4QH8aODi2IxKIn9Gx9kGotdJuPcgM6obnVxerTGdGdf5hFVS4E8_-wkR4Yx2-FN0k1TWwfLPHpBcwD0fZClqvwzQBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHzjM-EAAAQP__________gmlkgnY0gmlwhCLkuviJc2VjcDI1NmsxoQKeNYknrQ_uc6B2EqkbmBkgddlOVRf5c6c_14l-TU3NeohzeW5jbmV0cwCDdGNwghCSg3VkcIIQkg \
--checkpoint-sync-url=http://159.135.192.192:10004 \
--genesis-beacon-api-url=http://159.135.192.192:10004 \
--execution-endpoint=http://127.0.0.1:8551 \
--jwt-secret=${work_dir}/config/jwtsecret \
--chain-config-file=${work_dir}/config/config.yaml \
--contract-deployment-block 0 \
--deposit-contract=0x4242424242424242424242424242424242424242 \
--p2p-local-ip=0.0.0.0 \
--p2p-max-peers=100 \
--p2p-tcp-port=13000 \
--p2p-udp-port=12000 \
--rpc-host=127.0.0.1 \
--rpc-port=4001 \
--grpc-gateway-host=127.0.0.1 \
--grpc-gateway-port=3500 \
--enable-debug-rpc-endpoints \
--min-sync-peers=1
Restart=on-failure
RestartSec=3
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable opside-beacon.service
sudo systemctl restart opside-beacon.service
