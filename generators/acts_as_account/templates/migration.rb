class ActsAsAccountMigration < ActiveRecord::Migration
  def self.up
    load(File.dirname(__FILE__) + '../../../db/schema.rb')
  end
  
  def self.down
    # TODO: add down migration, when schema.rb was replaced
  end
end