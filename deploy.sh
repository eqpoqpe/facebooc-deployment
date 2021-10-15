#!/bin/bash

echo "Deploy for facebooc [https://github.com/jserv/facebooc]"

declare readonly root_dir="/root"
declare readonly bin_exec_dir="/opt"
declare readonly template_file_dir="/tmp"

cd $root_dir

curl --retry 10 --retry-max-time 60 -H "Cache-Control: no-cache" -fsSL github.com/eqpoqpe/facebooc-deploy/releases/download/v1.0.0/facebooc-v1.0.0-amd64_linux.tar.gz -o $template_file_dir/facebooc-bin.tar.gz

cd $root_dir

if [ -d "$bin_exec_dir" ]; then

	# unit test
	tar -xzvf $template_file_dir/facebooc-bin.tar.gz -C $bin_exec_dir/
else
	mkdir $bin_exec_dir
fi

tar -xzvf $template_file_dir/facebooc-bin.tar.gz -C $bin_exec_dir/

cd $bin_exec_dir/facebooc && ./bin/facebooc $(PORT)

#if [ $(pwd) = $bin_exec_dir ] && [ -e "$bin_exec_dir" ]; then
#	./bin/facebooc
#fi
