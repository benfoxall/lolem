# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lolem/version"

Gem::Specification.new do |s|
  s.name        = "lolem"
  s.version     = Lolem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ben Foxall"]
  s.email       = ["benfoxall@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Lorem Ipsum with more lol}
  s.description = %q{Outputs lorem ipsum, with some lolz put in for good measure}

  s.rubyforge_project = "lolem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
