use [AdventureWorksLT2008]
exec sp_replicationdboption @dbname = N'AdventureWorksLT2008', @optname = N'publish', @value = N'true'
GO
-- Adding the transactional publication
use [AdventureWorksLT2008]
exec sp_addpublication @publication = N'replAdventureWorksLT2008Sales', @description = N'Transactional publication of database ''AdventureWorksLT2008'' from Publisher ''SQL2014STD''.', @sync_method = N'concurrent', @retention = 0, @allow_push = N'true', @allow_pull = N'true', @allow_anonymous = N'true', @enabled_for_internet = N'false', @snapshot_in_defaultfolder = N'true', @compress_snapshot = N'false', @ftp_port = 21, @allow_subscription_copy = N'false', @add_to_active_directory = N'false', @repl_freq = N'continuous', @status = N'active', @independent_agent = N'true', @immediate_sync = N'true', @allow_sync_tran = N'false', @allow_queued_tran = N'false', @allow_dts = N'false', @replicate_ddl = 1, @allow_initialize_from_backup = N'false', @enabled_for_p2p = N'false', @enabled_for_het_sub = N'false'
GO


exec sp_addpublication_snapshot @publication = N'replAdventureWorksLT2008Sales', @frequency_type = 4, @frequency_interval = 1, @frequency_relative_interval = 1, @frequency_recurrence_factor = 0, @frequency_subday = 8, @frequency_subday_interval = 1, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 0, @active_end_date = 0, @job_login = null, @job_password = null, @publisher_security_mode = 1


use [AdventureWorksLT2008]
exec sp_addarticle @publication = N'replAdventureWorksLT2008Sales', @article = N'Product', @source_owner = N'SalesLT', @source_object = N'Product', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'Product', @destination_owner = N'SalesLT', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_SalesLTProduct', @del_cmd = N'CALL sp_MSdel_SalesLTProduct', @upd_cmd = N'SCALL sp_MSupd_SalesLTProduct'
GO




use [AdventureWorksLT2008]
exec sp_addarticle @publication = N'replAdventureWorksLT2008Sales', @article = N'ProductCategory', @source_owner = N'SalesLT', @source_object = N'ProductCategory', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'ProductCategory', @destination_owner = N'SalesLT', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_SalesLTProductCategory', @del_cmd = N'CALL sp_MSdel_SalesLTProductCategory', @upd_cmd = N'SCALL sp_MSupd_SalesLTProductCategory'
GO




use [AdventureWorksLT2008]
exec sp_addarticle @publication = N'replAdventureWorksLT2008Sales', @article = N'ProductDescription', @source_owner = N'SalesLT', @source_object = N'ProductDescription', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'ProductDescription', @destination_owner = N'SalesLT', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_SalesLTProductDescription', @del_cmd = N'CALL sp_MSdel_SalesLTProductDescription', @upd_cmd = N'SCALL sp_MSupd_SalesLTProductDescription'
GO




use [AdventureWorksLT2008]
exec sp_addarticle @publication = N'replAdventureWorksLT2008Sales', @article = N'ProductModel', @source_owner = N'SalesLT', @source_object = N'ProductModel', @type = N'logbased', @description = null, @creation_script = null, @pre_creation_cmd = N'drop', @schema_option = 0x000000000803509F, @identityrangemanagementoption = N'manual', @destination_table = N'ProductModel', @destination_owner = N'SalesLT', @vertical_partition = N'false', @ins_cmd = N'CALL sp_MSins_SalesLTProductModel', @del_cmd = N'CALL sp_MSdel_SalesLTProductModel', @upd_cmd = N'SCALL sp_MSupd_SalesLTProductModel'
GO




