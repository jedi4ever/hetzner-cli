require 'rubygems'

require 'hetnzer-cli/command'

module HetznerCli
  class CLI < Thor

    include HetznerCli::Command

    desc "kickstart IP", "Re-install server with IP"
    method_option :robot_url , :default => 'https://robot-ws.your-server.de/', :desc => "URL to connect to hetzner robo service"
    method_option :user, :desc => 'Hetzner Admin Username (overrides config_file)'
    method_option :password, :desc => 'Hetzner Admin Password (overrides config_file)'
    method_option :config_file, :default => "#{ENV['HOME']}/.hetzner", :desc => "file to read config from"
    method_option :dist, :desc => "Distribution to use (overrides config_file)"
    method_option :arch, :desc => "Architecture to use"

    def kickstart(ip)
      _kickstart(pattern,options)
    end



  end
end
