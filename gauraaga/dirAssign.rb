directory '/etc/dir1'
directory '/root/dir2'
directory 'dir3' do
  owner 'trainee'
  action :create
end

