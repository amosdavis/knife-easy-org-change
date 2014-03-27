current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "username"
client_key               "~/private_keys/chef/personal_key.pem"
validation_client_name   "#{ENV['CHEF_ORG_NAME']}-validator"
validation_key           "private_keys/chef/#{ENV['CHEF_ORG_NAME']}-validator.pem"
chef_server_url          "https://chef-url/organizations/#{ENV['CHEF_ORG_NAME']}"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["~/git_stuff/chef/cookbooks"]

