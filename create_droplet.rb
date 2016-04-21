#!/usr/bin/env ruby
require 'optparse'
require 'droplet_kit'

class Droplet
   def initialize(name, size)
      @droplet_name=name
      @droplet_size=size
   end
   def get_name
    @droplet_name
   end
   def get_size
    @droplet_size
   end
  def set_name=(name)
    @droplet_name = name
  end
  def set_size=(size)
    @droplet_size = size
  end
end

droplet=Droplet.new("newdrop","1gb")

# parse arguments
ARGV.options do |opts|
  opts.on("-n", "--name=val", String)   { |val| droplet.set_name = val }
    opts.on("-s", "--size=val", String)   { |val| droplet.set_size = val }
    opts.parse!
    end

    token='4d74f120fe5be4bc2ba6e3f492ee39fda4e875f89c39a358d10af295721daad5'
    client = DropletKit::Client.new(access_token: token)

    new_droplet = DropletKit::Droplet.new(name: droplet.get_name, region: 'nyc3', size: droplet.get_size, image: 'ubuntu-14-04-x64')
    client.droplets.create(new_droplet)

