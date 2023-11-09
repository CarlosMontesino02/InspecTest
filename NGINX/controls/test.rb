#describe service('nginx') do
#        it { should be_installed }
#        it { should be_enabled }
#        it { should be_running }
#end

describe sysv_service('nginx') do
        it { should be_installed }
        it { should be_enabled }
        it { should be_running }
end

describe file('/etc/nginx/nginx.conf') do
        it { should exist }
end

describe nginx do
	its('version') { should be >= '1.17.0' }
end
