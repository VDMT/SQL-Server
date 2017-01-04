#The following describes getting a transactional replication setup between a distributor/subscriber; with the distributer being the publisher (push subscription)

1. "replication setup.sql" to be run on Publisher instance. This does setup of the SQL instance to enable publishing,
including creating the internal distribution database

2. "CreatePublication.sql" to be run on Publisher instance. The database name to be distributed needs to be configured in script.

3. "NewSubscription.sql" to be run on Publisher instance. step (2) uses the default replication path* so ensure the agent job that
connects to the subscriber has access to the path

* C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\repldata
