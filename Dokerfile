FROM mysql:5.7
#RUN service mysql start
ADD createdb.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/createdb.sh
#ADD testdkr.sql /docker-entrypoint-initdb.d/
ADD testdkr.sql /opt/

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]