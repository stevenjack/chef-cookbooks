# Author:: Steven Jack(<stevenmajack@gmail.com)
# Cookbook Name:: dnsmasq
#

default[:dnsmasq][:local_domains] = [
  {'domain' => 'pal.sandbox.dev.bbc.co.uk', 'host' => '127.0.0.1'},
  {'domain' => 'static.sandbox.dev.bbc.co.uk', 'host' => '127.0.0.1'},
  {'domain' => 'ichef.sandbox.dev.bbc.co.uk', 'host' => '127.0.0.1'},
  {'domain' => 'pal.sandbox.dev.bbc.com', 'host' => '127.0.0.1'},
  {'domain' => 'static.sandbox.dev.bbc.com', 'host' => '127.0.0.1'},
  {'domain' => 'ichef.sandbox.dev.bbc.com', 'host' => '127.0.0.1'}
]

default[:dnsmasq][:dns_servers] = [
  '8.8.8.8',
  '8.8.4.4'
]
