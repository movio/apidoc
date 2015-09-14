#!/usr/bin/env ruby
# == Wrapper script to update a local postgrseql database
#
# == Usage
#  ./dev.rb
#

command = "sem-apply --host dockerhost --user web --name apidoc"
puts command
system(command)
