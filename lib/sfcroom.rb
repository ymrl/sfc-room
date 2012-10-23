#coding:utf-8
$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
  
directory = File.expand_path(File.dirname(__FILE__))

require directory + "/sfcroom/version.rb"
require directory + "/sfcroom/constants.rb"
require directory + "/sfcroom/utils.rb"
require directory + "/sfcroom/room.rb"
require directory + "/sfcroom/parse.rb"

module SFCRoom
  # Your code goes here...
end
