#!/bin/bash

echo "Deploy for facebooc [https://github.com/jsver/facebooc]"

cd /root

curl --retry 10 --retry-max-time 60 -H "Cache-Control: no-cache" -fsSL github.com/eqpoqpe/facebooc-deploy/releases/download/v1.0.0/facebooc-v1.0.0-amd64_linux.tar.gz -o /root/facebooc-bin.tar.gz

cd /root

tar -xzf /root/facebooc-bin.tar.gz

cd /root/facebooc

./bin/facebooc
