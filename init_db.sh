sudo docker exec -i $(sudo docker ps | grep "postgres_1\|postgres-1" | cut -f1 -d" ") \
psql -Upostgres -p 5432 << EOF
create database friendlyfl-router;
EOF
