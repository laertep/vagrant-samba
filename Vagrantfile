Vagrant.configure("2") do |config|
  config.vm.box = "centos/8"
  config.vm.provider "virtualbox" do |vb|
      vb.name = "samba"
      vb.memory = "1024"
   end
   config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.network "public_network", bridge: "Intel(R) Ethernet Connection I217-LM"
   config.vm.synced_folder "./samba", "/vagrant/samba"

   config.vm.provision "shell", inline: <<-SHELL
   # Procedimento para instalar pacotes no centos/8
   sudo cd /etc/yum.repos.d/
   sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
   sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
   sudo yum update -y
   sudo yum install docker -y
   SHELL
end
