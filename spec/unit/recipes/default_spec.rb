#
# Cookbook:: development
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python-test::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
  # for a complete list of available platforms and versions see:
  # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
  platform 'ubuntu', '18.04'
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
    it 'should use pip to install plugins' do
      expect(chef_run).to run_execute('python-pip install plugins')
    end
    it 'should install two plugins for gnureadline' do
      expect(chef_run).to install_package 'libncurses5-dev'
      expect(chef_run).to install_package 'libffi-dev'
    end
  end
end
