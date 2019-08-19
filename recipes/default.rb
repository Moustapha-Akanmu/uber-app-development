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

execute 'python-pip install plugin flask' do
  command 'pip install flask==0.10.1'
end
execute 'python-pip install plugin Jinja2' do
  command 'pip install Jinja2==2.7.3'
end
execute 'python-pip install plugin markupsafe' do
  command 'pip install markupsafe==0.23'
end
execute 'python-pip install plugin werkzeug' do
  command 'pip install werkzeug==0.9.6'
end
execute 'python-pip install plugin gnureadline' do
  command 'pip install gnureadline==6.3.3'
end
execute 'python-pip install plugin itsdangerous' do
  command 'pip install itsdangerous==0.24'
end
execute 'python-pip install plugin rauth' do
  command 'pip install rauth==0.7.0'
end
execute 'python-pip install plugin requests' do
  command 'pip install requests==2.3.0'
end
execute 'python-pip install plugin wsgiref' do
  command 'pip install wsgiref==0.1.2'
end
execute 'python-pip install plugin gunicorn' do
  command 'pip install gunicorn==18.0'
end
execute 'python-pip install plugin Flask-SSLify' do
  command 'pip install Flask-SSLify==0.1.4'
end
execute 'python-pip install test plugin pytest' do
  command 'pip install pytest==2.5.2'
end
execute 'python-pip install test plugin pytest-cov' do
  command 'pip install pytest-cov==1.6'
end
execute 'python-pip install test plugin betamax' do
  command 'pip install betamax==0.4.0'
end
execute 'python-pip install test plugin flake8' do
  command 'pip install flake8==2.1.0'
end
execute 'python-pip install test plugin pep8' do
  command 'pip install pep8==1.5.6'
end
execute 'python-pip install test plugin pyflakes' do
  command 'pip install pyflakes==0.8.1'
end
execute 'python-pip install test plugin coveralls' do
  command 'pip install coveralls==0.4.2'
end
