include_recipe "apt"
include_recipe "apache2"
include_recipe "php"

mysql_service 'foo' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end

log "Apache2 succesfully installed!"