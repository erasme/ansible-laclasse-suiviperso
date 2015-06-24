Vagrant.configure(2) do |config|
  config.vm.box = "leucos/trusty64-ansible-1.9"

  config.vm.provider "virtualbox" do |v|
    v.name   = "ansible-laclasse-suiviperso"
    v.memory = 2048
  end

  config.vm.provision "shell",
    :path => "tests/specs.sh",
    :upload_path => "/home/vagrant/specs",
    # change role name below
    :args => "--install ansible-laclasse-suiviperso"
end
