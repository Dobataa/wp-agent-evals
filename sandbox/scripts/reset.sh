#!/bin/sh
# Restores the database to the base snapshot. Runs inside the db container.
# docker compose exec db sh /scripts/reset.sh
set -e
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" wordpress < /snapshots/base.sql
echo "Sandbox reset."