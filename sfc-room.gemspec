# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sfc-room/version"

Gem::Specification.new do |s|
  s.name        = "sfc-room"
  s.version     = SFCRoom::VERSION
  s.authors     = ["ymrl"]
  s.email       = ["ymrl@ymrl.net"]
  s.homepage    = "https://github.com/ymrl/sfc-room"
  s.summary     = %q{Parser for SFC classrooms}
  s.description = %q{SFCRoom is a parser for clasrooms of Keio University Shonan Fujisawa Campus.  }
  s.licenses    = ['MIT']
  s.required_ruby_version = ">= 1.9"

  s.rubyforge_project = "sfc-room"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "bundler", "~> 1.3"
  # s.add_runtime_dependency "rest-client"
end
