#!/bin/sh
cd source
execpath=$(cd "$(dirname "$0")"; pwd)
echo "current executed path is : ${execpath}"
#echo "full path to currently executed script is : ${baseDirForScriptSelf}"
#full path to currently executed script is : /home/ubuntu/nginx_compile/source
cd ${execpath}/pcre-8.41
sudo ./configure
sudo make
sudo make install
cd ${execpath}/nginx-1.13.7
sudo ./configure --prefix=/usr/local/nginx/ --with-http_realip_module --with-http_addition_module --with-http_gzip_static_module --with-http_secure_link_module --with-http_stub_status_module --with-stream  --with-pcre=${execpath}/pcre-8.41 --with-zlib=${execpath}/zlib-1.2.11 --with-openssl=${execpath}/openssl-1.1.0g  --with-debug --with-cc-opt='-g -o0'
sudo make CFLAGS="-g -oO"
sudo make install
#在/usr/local/目录下面， 产生nginx 的目录
#./sbin/nginx –c ./conf/nginx.conf