#!/usr/bin/env bash
[[ -n "`docker ps -f name=mysql | grep mysql`" ]] && echo "mysql is running!" && exit -1
sqlDir="`dirname $0`/sql"
echo "Sql dir: $sqlDir"
echo "Should init sql scripts: `ls $sqlDir`"
docker run --rm -v `pwd`/$sqlDir:/docker-entrypoint-initdb.d -v `pwd`/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=111 -e MYSQL_USER=test -e MYSQL_PASSWORD=ttt -e MYSQL_DATABASE=test -e LANG=C.UTF-8  -p 3306:3306 mysql:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --transaction_isolation=READ-COMMITTED --default-authentication-plugin=mysql_native_password

