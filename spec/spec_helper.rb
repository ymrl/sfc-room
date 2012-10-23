#coding:utf-8
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))

if RUBY_VERSION < "1.9"
  $KCODE="UTF-8"
end


require 'sfc-room'

#Dir[File.join(File.dirname(__FILE__), "..", "lib", "models", "**/*.rb")].each do |f|
#  require f
#end
