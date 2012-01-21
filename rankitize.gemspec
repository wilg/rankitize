# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rankitize/version"

Gem::Specification.new do |s|
  s.name        = "rankitize"
  s.version     = Rankitize::VERSION
  s.authors     = ["Wil Gieseler"]
  s.email       = ["supapuerco@gmail.com"]
  s.homepage    = "https://github.com/supapuerco/rankitize"
  s.summary     = %q{Gem to allow ActiveRecord models to find their ranking in a list.}
  s.description = %q{Gem to allow ActiveRecord models to find their ranking in a list.}

  s.rubyforge_project = "rankitize"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
