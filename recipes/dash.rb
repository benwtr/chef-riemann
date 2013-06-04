#
# Cookbook Name:: riemann
# Recipe:: dash
#
#

include_recipe "riemann::server"
include_recipe "riemann::client"

%w{riemann-dash}.each do |pkg|
  gem_package pkg do
    action [:install]
  end
end
