#!/bin/bash
# This script initalizes frontend, backend, and the 3 databases.
# A string identifying the ZooKeeper host and its port number, to be passed directly to the constructor for KazooClient. You should not try to interpret this string, but simply pass it directly to the constructor.
# The name of the SQS-in queue. A string of characters and hyphens with no whitespace or other punctuation.
# The name of the SQS-out queue. A string of characters and hyphens with no whitespace or other punctuation.
# The provisioned write capacity for the DynamoDB table created by each database instance. Integer, writes/s.
# The provisioned read capacity for the DynamoDB table created by each database instance. Integer, reads/s.
# A list of instance names for your database instances.
# A list of names of database instances that will be proxied for publish/subscribe.
# A base port address.

ZK_string=$1
In_queue=$2
Out_queue=$3
Write_capacity=$4
Read_capacity=$5
DB_names=$6
DB_proxy=$7
Base_port=$8

# Pass ZK_string to DBs
# Pass in_queue to Frontend, DBs
# Pass out_queue to Backend, DBs
# Pass Write/Read Capacity to DBs

# StartFrontEnd($In_queue)
# StartBackEnd($Out_queue)

# Starts the DBs
for DB_name in $DB_names; do
	# StartDatabase($ZK_string, $In_queue, $Out_queue, $Write_capacity, $Read_capacity, $DB_name, $DB_names, $DB_proxy, $Base_port)
	echo $DB_name
done

exit 0