#!/bin/sh
# Saves the current database as the base snapshot. Runs inside the db container.
# docker compose exec db sh /scripts/snapshot.sh
set -e
mysqldump -uroot -p"$MYSQL_ROOT_PASSWORD" --single-transaction wordpress > /snapshots/base.sql
echo "Snapshot saved to sandbox/snapshots/base.sql"