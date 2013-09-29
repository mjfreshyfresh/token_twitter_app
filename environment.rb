Encoding.default_internal = 'UTF-8'
require 'rubygems'
require 'bundler/setup'
Bundler.require

Dir.glob(['lib', 'models'].map! {|d| File.join File.expand_path(File.dirname(__FILE__)), d, '*.rb'}).each {|f| require f}

# Product is Heroku 
if ENV['HEROKU_POSTGRESQL_ROSE_URL']
  DataMapper.setup(:default, ENV['HEROKU_POSTGRESQL_ROSE_URL'])
else
  DataMapper.setup(:default, "postgres://:@localhost/tokentwitterdev") # runs locally
end