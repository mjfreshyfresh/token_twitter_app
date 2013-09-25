$stdout.sync = true

require File.join(File.expand_path(File.dirname(__FILE__)), 'environment.rb')

use Rack::Session::Cookie  
use OmniAuth::Builder do

  provider :twitter, CONSUMER_KEY, CONSUMER_SECRET
end

map '/' do
  run Controller
end