# This simple stuff helps you install a mysql server on your docker system.
but database content & configuration will remain in your local volumn.


### Prerequisites

- docker - You need to add docker in sudo group. [Post-installation steps for Linux](https://docs.docker.com/engine/install/linux-postinstall/) 


### How to install

To create new mysql server very first time.
1. Fill out `env` file
2. Execute `docker.network.create.sh`
3. Execute `docker.run.sh`

To change your mysql.cnf.
1. Execute `docker.container.stop.sh`
2. Modify `./etc/mysql/mysql.conf.d/yourmysql.cnf`
3. Execute `docker.container.start.sh`


### Directories
- `./var/lib/mysql/` : Your database contents goes here
- `./etc/mysql/mysql.conf.d/` : Your configuration file goes here
- `./sql/` : (optional) Put your .sql file here


### How to use

Run command line prompt
```
$ ./commandline.sh 
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6682
Server version: 5.7.33 MySQL Community Server (GPL)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 
```

Run `.sql` file
1. Modify `init.sh` changing file name. `/sql/db-user.sql` -> `your_sql_file.sql`
2. Execute `init.sh`


### License
MIT License :D