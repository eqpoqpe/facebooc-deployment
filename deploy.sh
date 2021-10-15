#!/bin/bash

echo "Deploy for facebooc [https://github.com/jserv/facebooc]"

declare readonly root_dir="/root"
declare readonly bin_exec_dir="/opt/facebooc"
declare readonly template_file_dir="/tmp"

cd $root_dir

curl --retry 10 --retry-max-time 60 -H "Cache-Control: no-cache" -fsSL github.com/eqpoqpe/facebooc-deploy/releases/download/v1.0.0/facebooc-v1.0.0-amd64_linux.tar.gz -o /tmp/facebooc-bin.tar.gz

cd $root_dir

tar -xzf $template_file_dir/facebooc-bin.tar.gz -C $bin_exec_dir/

cd $bin_exec_dir

#if [ $(pwd) = $bin_exec_dir ] && [ -e "$bin_exec_dir" ]; then
#	./bin/facebooc
#fi

./bin/facebooc
