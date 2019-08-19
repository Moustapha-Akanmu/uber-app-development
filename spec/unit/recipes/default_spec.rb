#
# Cookbook:: development
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'development::default' do
  context 'When all attributes are default, on Ubuntu/xenial64' do
  # for a complete list of available platforms and versions see:
  # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
  platform 'ubuntu', '18.04'
  end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'should update the sources list' do
      expect(chef_run).to update_apt_update 'update_sources'
    end
    it 'should install python' do
      expect(chef_run).to install_package 'python'
    end
    it 'should install pip for python' do
      expect(chef_run).to install_package 'python-pip'
    end
    it 'should install two plugins for gnureadline' do
      expect(chef_run).to install_package 'libncurses5-dev'
      expect(chef_run).to install_package 'libffi-dev'
    end
    it 'should install flask version 0.10.1' do
      expect(chef_run).to run_execute('python-pip install plugin flask')
    end
    it 'should install flask Jinja2 version 2.7.3' do
      expect(chef_run).to run_execute('python-pip install plugin Jinja2')
    end
    it 'should install markupsafe version 0.23' do
      expect(chef_run).to run_execute('python-pip install plugin markupsafe')
    end
    it 'should install werkzeug version 0.9.6' do
      expect(chef_run).to run_execute('python-pip install plugin werkzeug')
    end
    it 'should install gnureadline version 6.3.3' do
      expect(chef_run).to run_execute('python-pip install plugin gnureadline')
    end
    it 'should install itsdangerous version 0.24' do
      expect(chef_run).to run_execute('python-pip install plugin itsdangerous')
    end
    it 'should install rauth version 0.7.0' do
      expect(chef_run).to run_execute('python-pip install plugin rauth')
    end
    it 'should install requests version 2.3.0' do
      expect(chef_run).to run_execute('python-pip install plugin requests')
    end
    it 'should install wsgiref version 0.1.2' do
      expect(chef_run).to run_execute('python-pip install plugin wsgiref')
    end
    it 'should install gunicorn version 18.0' do
      expect(chef_run).to run_execute('python-pip install plugin gunicorn')
    end
    it 'should install Flask-SSLify version 0.1.4' do
      expect(chef_run).to run_execute('python-pip install plugin Flask-SSLify')
    end
    it 'should install pytest version 2.5.2' do
      expect(chef_run).to run_execute('python-pip install test plugin pytest')
    end
    it 'should install pytest-cov version 1.6' do
      expect(chef_run).to run_execute('python-pip install test plugin pytest-cov')
    end
    it 'should install betamax version 0.4.0' do
      expect(chef_run).to run_execute('python-pip install test plugin betamax')
    end
    it 'should install flake8 version 2.1.0' do
      expect(chef_run).to run_execute('python-pip install test plugin flake8')
    end
    it 'should install pep8 version 1.5.6' do
      expect(chef_run).to run_execute('python-pip install test plugin pep8')
    end
    it 'should install pyflakes version 0.8.1' do
      expect(chef_run).to run_execute('python-pip install test plugin pyflakes')
    end
    it 'should install coveralls version 0.4.2' do
      expect(chef_run).to run_execute('python-pip install test plugin coveralls')
    end
end
