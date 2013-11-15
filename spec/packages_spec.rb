require 'spec_helper'

describe 'packages::default' do
  let(:chef_run) {
    ChefSpec::Runner.new do |node|
      node.set[:packages][:to_install] = [
        'foo',
        'bar'
      ]
    end.converge(described_recipe)
  }

  it 'executed yum update' do
    expect(chef_run).to run_execute('yum -y update')
  end

  it 'installs packages' do
    expect(chef_run).to install_package('foo')
    expect(chef_run).to install_package('bar')
  end
end
