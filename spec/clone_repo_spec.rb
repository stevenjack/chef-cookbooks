require 'spec_helper'

describe 'clone_repo::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs git-core' do
    expect(chef_run).to install_package('git-core')
  end
end

describe 'clone_repo::responsive_news' do
  let(:chef_run) {
    ChefSpec::Runner.new do |node|
      node.set['clone_repo'][:github] = 'https://github.com/BBC-News'
    end.converge(described_recipe)
  }

  it 'clones news' do
    expect(chef_run).to include_recipe('clone_repo::default')
    expect(chef_run).to sync_git('/mnt/hgfs/workspace')
      .with(repository: 'https://github.com/BBC-News/responsive-news.git')
  end
end
