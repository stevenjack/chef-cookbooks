require 'spec_helper'

describe 'vagrant::user' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'creates vagrant user' do
    expect(chef_run).to create_user('vagrant')
  end
end

describe 'vagrant::sudoer' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'adds vagrant user to sudoers' do
    expect(chef_run).to touch_file('/etc/sudoers').with(mode: 00440)
  end
end

describe 'vagrant::nfs' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'installs nfs' do
    expect(chef_run).to install_package('nfs-utils')
    expect(chef_run).to install_package('nfs-utils-lib')
  end

  it 'starts portmap' do
    expect(chef_run).to enable_service('portmap')
    expect(chef_run).to start_service('portmap')
  end

  it 'starts nfs' do
    expect(chef_run).to enable_service('nfs')
    expect(chef_run).to start_service('nfs')
  end
end

describe 'vagrant::network' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'sets up ifcfg-eth0' do
    expect(chef_run).to create_cookbook_file('/etc/sysconfig/network-scripts/ifcfg-eth0')
  end
end

describe 'vagrant::ssh' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'creates ssh directory' do
    expect(chef_run).to create_directory('/home/vagrant/.ssh').with(
      owner: 'vagrant',
      group: 'vagrant',
      mode: 00700
    )
  end

  it 'installs ssh key' do
    expect(chef_run).to create_remote_file('/home/vagrant/.ssh/authorized_keys').with(
      owner: 'vagrant',
      group: 'vagrant',
      mode: 00600
    )
  end
end

describe 'vagrant::tty' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'cleans disk' do
    expect(chef_run).to run_execute("sed -i 's/^Defaults\s*requiretty/# Defaults requiretty/' /etc/sudoers")
  end
end

describe 'vagrant::dd' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'fills disk' do
    expect(chef_run).to run_execute('dd if=/dev/zero of=/EMPTY bs=1M')
  end

  it 'deletes file' do
    expect(chef_run).to delete_file('/EMPTY')
  end
end
