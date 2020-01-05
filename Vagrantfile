
Vagrant.configure("2") do |config|

  scripts_path = "#{File.expand_path(File.dirname(__FILE__))}/scripts"
  playbooks_path = "#{File.expand_path(File.dirname(__FILE__))}/provisioning/playbooks"

  config.vm.box = "archlinux/archlinux"
  config.vm.define "team-city"

  config.vm.provider :virtualbox do |vb|
      vb.name = "team-city"
  end

  config.vm.provision "shell",
                      path: "#{scripts_path}/python.sh"

  config.vm.network "forwarded_port", guest: 8111, host: 8111

  config.vm.provision :ansible do |ansible|
    ansible.limit = "team-city"
    ansible.playbook = "#{playbooks_path}/teamcity.yaml"
    ansible.become = true
    ansible.become_user = "root"
  end
end
