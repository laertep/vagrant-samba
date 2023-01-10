Vagrant.configure("2") do |config|
  config.vm.box = "centos/8"
  config.vm.provider "virtualbox" do |vb|
      vb.name = "samba"
      vb.memory = "1024"
   end
   config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.network "public_network", ip: "172.22.12.203", bridge: "Intel(R) Ethernet Connection I217-LM"
   config.vm.synced_folder "./samba", "/tmp/samba"

   #config.vm.provision "shell", inline: <<-SHELL
   
   # Procedimento para instalar pacotes no centos/8
   config.vm.provision "shell", path: "script.sh"
   
   
end
