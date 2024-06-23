#!/bin/bash

rm -f ./src/release/cuda_ed25519_vanity;
rm -f ./src/release/ecc_scan.o;
#export PATH=/usr/local/cuda/bin:$PATH;
make -j;

# 生成中に nvidia-smi するとちゃんと GPU コア活かせてるかとか見れるらしい
