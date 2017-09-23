#!/bin/sh
DBNAME=testdkr
DBPASS=dkrdbuser
#mysqladmin -uroot -p $DBPASS "create $DBNAME;"
service mysql start
sleep 5s
MYSQL_PWD=dkrdbuser mysql -uroot -e "create database if not exists testdkr;"
MYSQL_PWD=dkrdbuser mysql -uroot  testdkr < /opt/testdkr.sql
sleep 5s
#service mysql stop