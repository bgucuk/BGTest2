Select
	s.session_id,
	s.login_name,
	s.host_name,
	@@SERVERNAME AS ServerName,
	c.auth_scheme,
	c.net_transport,
	c.connect_time
from	sys.dm_exec_connections c
	inner join sys.dm_exec_sessions s
		on c.session_id = s.session_id
where	s.session_id = @@SPID
order by s.login_name

/****
select	*
from	[COLOCRMPRDSQL03].master.sys.databases

select	*
from	[COLOCRMPRDSQL04].master.sys.databases

select	*
from	[COLOCRMPRDSQL05].master.sys.databases



****/