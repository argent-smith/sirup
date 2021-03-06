# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sirup/version"

Gem::Specification.new do |s|
  s.name        = "sirup"
  s.version     = Sirup::VERSION
  s.authors     = ["Pavel Argentov"]
  s.email       = ["argentoff@gmail.com"]
  s.homepage    = "https://github.com/argent-smith"
  s.summary     = %q{SIruP: pure ruby SIP implementation}
  s.description = %q{At this moment this library/script are only intended for testing/pinging/checking the remote SIP server. You are welcome to extend it if you wish!}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "ZenTest"
  s.add_development_dependency "test-unit"
  s.add_development_dependency "redgreen"
  s.add_development_dependency "ruby-graphviz"
end

