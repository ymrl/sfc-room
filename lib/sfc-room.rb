#coding:utf-8
$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
  
directory = File.expand_path(File.dirname(__FILE__))

require directory + "/sfc-room/version.rb"
require directory + "/sfc-room/constants.rb"
require directory + "/sfc-room/utils.rb"
require directory + "/sfc-room/room.rb"
require directory + "/sfc-room/parse.rb"

module SFCRoom
  # Your code goes here...
end
