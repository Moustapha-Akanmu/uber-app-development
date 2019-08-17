#
# Cookbook:: development
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python' do
  action :install
end

package 'python-pip' do
  action :install
end

package 'libncurses5-dev' do
  action :install
end

package 'libffi-dev' do
  action :install
end

execute 'python-pip install plugins' do
  command 'pip install flask==0.10.1'
  command 'pip install Jinja2==2.7.3'
  command 'pip install markupsafe==0.23'
  command 'pip install werkzeug==0.9.6'
  command 'pip install gnureadline==6.3.3'
  command 'pip install itsdangerous==0.24'
  command 'pip install rauth==0.7.0'
  command 'pip install requests==2.3.0'
  command 'pip install wsgiref==0.1.2'
  command 'pip install gunicorn==18.0'
  command 'pip install Flask-SSLify==0.1.4'
end
