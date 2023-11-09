#describe service('sshd') do
#	it { should be_installed }
#	it { should be_enabled }
#	it { should be_running }
#end

describe sysv_service('sshd') do
	it { should be_installed }
	it { should be_enabled }
	it { should be_running }
end
describe port(22) do
	its('protocols') { should include 'tcp' }
	its('addresses') { should include '0.0.0.0' }
end

describe sshd_config do
	its('Port') { should cmp  22 }
	its('UsePAM') { should eq 'yes' }
end
