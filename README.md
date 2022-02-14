# Dockerized SQL 

# Introduction

Dockerfile to build a MySQL container image.

# Pre-requisites:

Install docker, mysql

# Steps to run:

1. Run ```make```
2. Run ```mysql -h 0.0.0.0 -u sh_admin -p` (default pass: admin)

# Note: 

When container starts it loads schema,data from mysql_backup/sh_backup.sql
To create or update your backup run outside container ```mysqldump --column-statistics=0 -h 0.0.0.0 -u sh_admin -p -B student_helper> mysql_backup/sh_dump.sql```

Please purge container or images after use to save space.
