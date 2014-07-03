require 'rubygems'
require 'geminabox'

#use Rack::Auth::Basic, "RubyGems" do |username, password|
#  username == 'rubygems' && password == 'password'
#end

Geminabox.data = ENV['OPENSHIFT_DATA_DIR'] + 'gems'
Geminabox.rubygems_proxy = true

run Geminabox::Server
