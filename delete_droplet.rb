#!/usr/bin/ruby

require 'droplet_kit'
token='YOUR_TOKEN'
client = DropletKit::Client.new(access_token: token)

client.droplets.delete(id: 13747943)