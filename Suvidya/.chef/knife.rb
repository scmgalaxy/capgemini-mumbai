# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "suvighone"
client_key               "#{current_dir}/suvighone.pem"
chef_server_url          "https://api.chef.io/organizations/suviorg"
cookbook_path            ["#{current_dir}/../cookbooks"]
