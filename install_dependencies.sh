#!/usr/bin/bash

yum -y install akmod-VirtualBox git zsh vim postgresql postgresql-server postgresql-contrib postgresql-devel

chsh -s `which zsh` vagrant

postgresql-setup initdb
systemctl enable postgresql
systemctl start postgresql

su --command="perl -p -i -e 's/host([\w :\/\.]*)ident/host\$1trust/g' /var/lib/pgsql/data/pg_hba.conf" --login postgres

su --command="psql --command='CREATE ROLE vagrant WITH SUPERUSER LOGIN;'" --login postgres

systemctl restart postgresql
