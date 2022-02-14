all: build

build:
	@docker build -t mate/mysql .
	@docker run -d -e 'DB_REMOTE_ROOT_NAME=sh_admin' -e 'DB_REMOTE_ROOT_PASS=admin'  -p 3306:3306 --name mate_mysql mate/mysql
	@mysql -h 0.0.0.0 -u sh_admin -p < mysql_backup/sh_dump.sql 
