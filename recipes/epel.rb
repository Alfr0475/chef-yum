yum_key node['yum']['epel']['key'] do
  url node['yum']['epel']['key_url']
  action :add
end

yum_repository 'epel' do
  description 'Extra Pakcages for Enterprise Linux'
  key node['yum']['epel']['key']
  url node['yum']['epel']['baseurl']
  mirrorlist node['yum']['epel']['url']
  includepkgs node['yum']['epel']['includepkgs']
  exclude node['yum']['epel']['exclude']
  action :add
end
