require 'spec_helper'

describe 'certificates::default' do
  let(:chef_run) {
    ChefSpec::Runner.new do |node|
      node.set[:developer_certificate] = 'foo'
      node.set[:certificates][:locations] = [ '/tmp/foo.pem' ]
    end.converge(described_recipe)
  }

  it 'creates file' do
    expect(chef_run).to create_file_if_missing('/tmp/foo.pem').with(
      content: 'foo',
      user: 'root',
      group: 'root',
      mode: '0600'
    )
  end
end
