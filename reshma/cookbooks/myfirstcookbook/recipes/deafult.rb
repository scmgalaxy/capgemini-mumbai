template '/var/www/html/index.html' do
	source 'index.html.erb'
end

service 'iptables' do
	action:stop
end
