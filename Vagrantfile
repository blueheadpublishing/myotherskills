# encoding: utf-8
# This file originally created at http://rove.io/602bd54f1585a639e4be92816932c035

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "chef/ubuntu-14.04"
  config.ssh.forward_agent = true

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "8192"]
  end

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe :apt
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
    chef.add_recipe 'git'
    chef.add_recipe 'redis'
    chef.json = {
      :rbenv   => {
        :user_installs => [
          {
            :user   => "vagrant",
            :rubies => [
              "2.0.0-p353"
            ],
            :global => "2.0.0-p353",
            :gems   => { 
                          "2.1.2" => [
                            { name: "bundler" }
                          ]
                        }
          }
        ]
      },
      :git     => {
        :prefix => "/usr/local"
      }
    }
  end
end
