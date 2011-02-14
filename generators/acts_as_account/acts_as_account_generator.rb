class ActsAsAccountGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "acts_as_account_migration"
    end
  end
end
