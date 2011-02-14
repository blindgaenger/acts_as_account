require 'bundler'
Bundler::GemHelper.install_tasks

namespace :features do
  desc "create test database out of db/schema.rb"
  task :create_database do
    require 'rubygems'
    require 'active_record'
    access_data = YAML.load_file(File.dirname(__FILE__) + '/db/database.yml')['acts_as_account']
    conn = ActiveRecord::Base.establish_connection(Hash[access_data.select { |k, v| k != 'database'}]).connection
    conn.execute('DROP DATABASE IF EXISTS acts_as_account')
    conn.execute('CREATE DATABASE acts_as_account')
    conn.execute('USE acts_as_account')
    load(File.dirname(__FILE__) + '/db/schema.rb')
  end  
end