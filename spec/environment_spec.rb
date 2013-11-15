require 'spec_helper'

describe 'environment::subversion' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates subversion profile directory' do
    expect(chef_run).to create_directory('/root/.subversion').with(
      user: 'root',
      group: 'root'
    )
  end

  it 'creates subversion profile directory' do
    expect(chef_run).to touch_file('/root/.subversion/servers').with(
      user: 'root',
      group: 'root'
    )
  end
end

describe 'environment::reith_proxies' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'turns off reith' do
    expect(chef_run).to run_execute('/usr/sbin/reithproxies off')
  end
end
