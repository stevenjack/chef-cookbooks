require 'spec_helper'

describe 'services::default' do
  let(:chef_run) {
    ChefSpec::Runner.new do |node|
      node.set[:services][:services] = [
        'foo',
        'bar'
      ]
    end.converge(described_recipe)
  }

  it 'did things to the services' do
    expect(chef_run).to enable_service('foo')
    expect(chef_run).to restart_service('foo')
  end
end
