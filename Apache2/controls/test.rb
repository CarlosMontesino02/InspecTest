describe service('apache2') do
	it { should be_running }
	it { should be_enabled }
	it { should be_running }
end

describe apache_conf do
  its('KeepAlive') { should cmp 'On' }
end

describe port(80) do
	it { should be_listening }
end

describe file('/var/www/html/index.html') do
	it { file exist }
	its('owner') { should eq 'root' }
	its('group') { should eq 'root' }
end

describe user('www-data') do
	it { should exist }
end
