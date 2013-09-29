require 'rubygems'
require 'dotenv'
Dotenv.load

TWITTER_BASE_URL = 'https://api.twitter.com'
REGISTERED_REDIRECT_URI = ENV['BASE_URL'] + 'oauth2/callback'

require File.join(File.expand_path(File.dirname(__FILE__)), 'environment.rb')

use Rack::Session::Cookie, :secret => 'you_should_change_me_to_something'
use OmniAuth::Builder do
  provider :twitter, ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET']
end

require './app'
run Sinatra::Application