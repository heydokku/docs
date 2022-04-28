### Basics

[Database Driver](Database Driver)
OLTP

### Databases

[ ] [postgres](sql/postgres)
[0] MariaDB
[x] [MySQL](MySQL)
[0] google sheets
[ ] sqlite: use only in development
[ ] couchdb
[ ] [Prisma](https://github.com/prisma/prisma) 16k

### Time series database - TSDB

[0] [influxdb](TSDB/influxdb):  24k is the best
[ ] TimescaleDB: 12k
[ ] QuestDB: 12k
[ ] AWS Timestream: for IOT

### Database management tool

- Web-based
[0] adminer: for MySQL, PostgreSQL 100m+ Donwloads In docker hub, simpler than pgAdmin, without logging in
[0] pgAdmin: only for PostgreSQL
[X] phpAdmin: in LAMP stack

- Desktop app
[0] [Dbeaver](Dbeaver)

### In-memory data store has server

[ ] Redis
[ ] Memcached

[Compare between Redis and Memcached](https://aws.amazon.com/elasticache/redis-vs-memcached/)
Memcached is designed for simplicity while Redis offers a rich set of features that make it effective for a wide range of use cases

### Database for Big data

[ ] Presto: SQL query engine

### metadata database

[ ] for apache-superset

### Graphql

[ ] graphql: a Python-based GraphQL server that exposes mutations (actions) representing Prefect Server's logic
[ ] hasura: grapql engine on PostgreSQL


### NoSQL

[ ] MongoDB
[ ] ElasticSearch: index and store multiple different types of document and data in real-time
[ ] Cassandra https://hub.docker.com/_/cassandra
[ ] DynamoDB https://hub.docker.com/r/amazon/dynamodb-local
[ ] [CockroachDB](https://github.com/cockroachdb/cockroach)   https://hub.docker.com/r/cockroachdb/cockroach

### Database Client

[0] [gspread](gspread): to fetch the shared google sheet
[0] Terminal
[0] Dbeaver:  written in Java
