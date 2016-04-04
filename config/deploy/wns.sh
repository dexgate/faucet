#!/usr/bin/env bash
nohup /home/bts/bts/witness_node -d /home/bts/bts/data_dir --rpc-endpoint 127.0.0.1:8090 -s 114.92.254.159:62015 --genesis-json /home/bts/bts/genesis.json > /home/bts/bts/wn0.log 2>&1 &
nohup /home/bts/bts/witness_node -d /home/bts/bts/data_dir1 --rpc-endpoint 127.0.0.1:8091 -s 114.92.254.159:62015 --genesis-json /home/bts/bts/genesis.json > /home/bts/bts/wn1.log 2>&1 &
nohup /home/bts/bts/witness_node -d /home/bts/bts/data_dir2 --rpc-endpoint 127.0.0.1:8092 -s 114.92.254.159:62015 --genesis-json /home/bts/bts/genesis.json > /home/bts/bts/wn2.log 2>&1 &
nohup /home/bts/bts/witness_node -d /home/bts/bts/data_dir3 --rpc-endpoint 127.0.0.1:8093 -s 114.92.254.159:62015 --genesis-json /home/bts/bts/genesis.json > /home/bts/bts/wn3.log 2>&1 &
