require File.join(File.expand_path(File.dirname(__FILE__)), 'environment.rb')

desc "DESTRUCTIVE bootstrap of the database (e.g. rake bootstrap)"
task :bootstrap do
  puts "Bootstrapping database."
  ::DataMapper.auto_migrate!
end
