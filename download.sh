#!/bin/sh
FileNginx="nginx-1.13.7.tar.gz"
FileOpenssl="openssl-1.1.0g.tar.gz"
FilePcre="pcre-8.41.tar.gz"
FileZlib="zlib-1.2.11.tar.gz"
#https://udomain.dl.sourceforge.net/project/pcre/pcre/8.44/pcre-8.44.tar.gz
if [ ! -d "source" ]; then
    echo 'source is not exist'
    mkdir source
fi
cd source
# 这里的-f参数判断$myFile是否存在
if [ ! -f "$FileNginx" ]; then
    echo ''${FileNginx}' is not exist'
    wget http://nginx.org/download/nginx-1.13.7.tar.gz
    echo 'download '${FileNginx}' sucess'
fi
if [ ! -f "$FileOpenssl" ]; then
    echo ''${FileOpenssl}' is not exist'
    wget https://www.openssl.org/source/openssl-1.1.0g.tar.gz
    echo 'download '${FileOpenssl}' sucess'
fi
if [ ! -f "$FilePcre" ]; then
    echo ''${FilePcre}' is not exist'
    wget http://ftp.pcre.org/pub/pcre/pcre-8.41.tar.gz
    echo 'download '${FilePcre}' sucess'
fi
if [ ! -f "$FileZlib" ]; then
    echo ''${FileZlib}' is not exist'
    wget http://www.zlib.net/zlib-1.2.11.tar.gz
    echo 'download '${FileZlib}' sucess'
fi
tar xzvf nginx-1.13.7.tar.gz
tar xzvf openssl-1.1.0g.tar.gz
tar xzvf pcre-8.41.tar.gz
tar xzvf zlib-1.2.11.tar.gz