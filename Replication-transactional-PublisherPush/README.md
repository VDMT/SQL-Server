#The following describes getting a transactional replication setup between a distributor/subscriber; with the distributer being the publisher (push subscription)

1. "replication setup.sql" to be run on Publisher instance. This does setup of the SQL instance to enable publishing, including creating the internal distribution database

2. "CreatePublication.sql" to be run on Publisher instance. The database name to be distributed needs to be configured in script. Uses the default replication path* (unless otherwise stated). Ensure SQL Server Agent account has access to path.

3. Create subscription database on Subscriber instance. This is the database that will be populated by SQL replication. Ensure database owner is set to SA.

4. "NewSubscription.sql" to be run on Publisher instance. @subscriber_security_mode parameter determines if subscriber uses windows authentication ("1") or SQL server authentication ("0"), which is followed by @subscriber_login or @subscriber_password for SQL authentication.


* C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\repldata
* above tested with SQL 2014 (publisher) and SQL 2016 (subscriber)
