# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  def shared_options(box_url, override)
    override.vm.box_url = box_url

    override.vm.synced_folder '.', '/vagrant', nfs: true

    override.ssh.username = 'vagrant'

    # override.vm.provision "chef_solo" do |chef|
    #   chef.nfs = true
    #   chef.cookbooks_path = "cookbooks"
    # end
  end

  config.vm.box = 'sandbox'

  config.vm.provider :vmware_fusion do |vmware, override|
    shared_options('sandbox.box', override)

    vmware.vmx['memsize'] = '1024'
  end
end
