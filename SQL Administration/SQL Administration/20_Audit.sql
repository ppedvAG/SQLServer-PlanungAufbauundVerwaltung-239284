USE [Northwind]

GO
--auch per TSQL zB

CREATE DATABASE AUDIT SPECIFICATION [tmpMonitor]
FOR SERVER AUDIT [tmpAudit]
ADD (UPDATE ON OBJECT::[dbo].[tmpTest] BY [public]),
ADD (INSERT ON OBJECT::[dbo].[tmpTest] BY [public]),
ADD (DELETE ON OBJECT::[dbo].[tmpTest] BY [public])

GO
declare @used as int
select @used=count(object_name) from sys.fn_get_audit_file 
	('C:\_SQLBACKUP\tmpAudit_2F323F6C-360A-467A-A022-A716BED73CB5_0_133419320684470000.sqlaudit', default, default) 
	where object_name='tmpTest'
select @used


select *  from sys.fn_get_audit_file
	(
	'C:\_SQLBACKUP\Security_Audit_FEE98F05-198B-41FA-82D3-D43717E72AAB_0_133572148333750000.sqlaudit'
	, default
	, default
	) 
	

	Fehler bei der Anmeldung für den Benutzer "Susi".Ursache: 
	Fehler beim Öffnen 






select * from sys.fn_get_audit_file 
	('C:\_SQLBACKUP\tmpAudit_2F323F6C-360A-467A-A022-A716BED73CB5_0_133419320684470000.sqlaudit', default, default) 






