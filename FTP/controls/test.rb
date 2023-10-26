describe file('/etc/vsftpd.conf') do
	it { should exist }
	its('group') { should eq 'root' }
	its('owner') { should eq 'root' }
end
describe service('vsftpd') do
      it { should be_installed }
      it { should be_enabled }
      it { should be_running }
end
