# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_account/version"

Gem::Specification.new do |s|
  s.name        = "acts_as_account"
  s.version     = ActsAsAccount::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thies C. Arntzen", "Norman Timmler", "Matthias Frick", "Phillip Oertel"]
  s.email       = ["thieso@gmail.com"]
  s.homepage    = "http://github.com/betterplace/acts_as_account"
  s.summary     = %Q{acts_as_account implements double entry accounting for Rails models}
  s.description = %Q{acts_as_account implements double entry accounting for Rails models. Your models get accounts and you can do consistent transactions between them. Since the documentation is sparse, see the transfer.feature for usage examples.}

  s.rubyforge_project = "acts_as_account"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('activerecord', '>=2.3.5')
  s.add_dependency('actionpack', '>=2.3.5')

  s.add_development_dependency('cucumber', '0.10.0')
  s.add_development_dependency('mysql', '2.8.1')
  s.add_development_dependency('database_cleaner', '0.6.3')
end