#!/usr/bin/ruby

require 'droplet_kit'
token='4d74f120fe5be4bc2ba6e3f492ee39fda4e875f89c39a358d10af295721daad5'
client = DropletKit::Client.new(access_token: token)

client.droplets.delete(id: 13747943)