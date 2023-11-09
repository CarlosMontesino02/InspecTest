#systemd
#describe service('mysql') do
#	it { should be_installed }
#	it { should be_enabled }
#	it { should be_running }
#end
#sistemas con sysv
describe sysv_service('mysql') do
	it { should be_installed }
	it { should be_enabled }
	it { should be_running }
end

describe file('/etc/mysql/mysql.cnf') do
	it { should exist }
end

describe user('mysql') do
	it { should exist }
end

describe mysql_conf do
 	its('port') { should cmp 3306 }
end

describe port(3306) do
	it { should be_listening }
end
