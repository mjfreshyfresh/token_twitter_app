Encoding.default_internal = 'UTF-8'
require 'rubygems'
require 'bundler/setup'
Bundler.require

require File.join(File.expand_path(File.dirname(__FILE__)), 'secrets.rb')

Dir.glob(['lib', 'models'].map! {|d| File.join File.expand_path(File.dirname(__FILE__)), d, '*.rb'}).each {|f| require f}


# Product is Heroku 
 if ENV['HEROKU_POSTGRESQL_ROSE_URL']
  DataMapper.setup(:default, ENV['HEROKU_POSTGRESQL_ROSE_URL'])
 else
  DataMapper.setup(:default, "postgres://:@localhost/#{DEV_DB_NAME}") # runs locally
 end


class Controller < Sinatra::Base
  register Sinatra::Namespace
  register Sinatra::Flash

  set :raise_errors,    false
  set :show_exceptions, false
  set :method_override, true
  set :public,          'public'
  set :sessions,        true
  set :session_secret,  'PUT1SOMETHING!HERE'
  set :erubis,          :escape_html => true

  configure :development do
    use Rack::CommonLogger
    Bundler.require :development
  end

  configure :test do
  end

  configure :production do
  end

  not_found do
    erubis :'404'
  end

  error do
    erubis :'500'
  end
  
end

require File.join('.', 'controller.rb')