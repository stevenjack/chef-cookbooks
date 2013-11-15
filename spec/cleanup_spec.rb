require 'spec_helper'

describe 'cleanup::tmp' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'cleans /tmp' do
    expect(chef_run).to run_execute('rm -rf /tmp/*')
  end
end

describe 'cleanup::root' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'cleans /root' do
    expect(chef_run).to run_execute('rm -rf /root/*')
  end

  it 'cleans /root/.yum' do
    expect(chef_run).to run_execute('rm -rf /root/.yum/*')
  end
end

describe 'cleanup::var' do
  let(:chef_run) {
    ChefSpec::Runner.new.converge(described_recipe)
  }

  it 'cleans /var/cache/yum' do
    expect(chef_run).to run_execute('rm -rf /var/cache/yum/*')
  end

  it 'cleans /var/lib/dhclient' do
    expect(chef_run).to run_execute('rm -rf /var/lib/dhclient/*')
  end
end
