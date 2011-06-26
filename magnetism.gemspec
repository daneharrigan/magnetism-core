# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "magnetism/version"

Gem::Specification.new do |s|
  s.name        = "magnetism"
  s.version     = Magnetism::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Dane Harrigan"
  s.email       = "dane.harrigan@gmail.com"
  s.homepage    = ""
  s.summary     = %q{A website content management system}
  s.description = %q{A website content management system}

  s.rubyforge_project = "magnetism"

  s.add_dependency 'rails', '3.1.0.rc4'
  s.add_dependency 'haml', '~> 3.1.2'
  s.add_dependency 'devise', '~> 1.4.0'
  s.add_dependency 'inherited_resources', '~> 1.2.2'
  s.add_dependency 'layout_options', '~> 0.2.2'
  s.add_dependency 'current_object', '~> 0.2.1'
  s.add_dependency 'carrierwave', '~> 0.5.4'
  s.add_dependency 'fog', '~> 0.8.2'
  s.add_dependency 'mini_magick', '~> 3.3'
  s.add_dependency 'rdiscount', '~> 1.6.8'
  #s.add_dependency 'defender', '~> 2.0.0'
  s.add_dependency 'coderay', '~> 0.9.8'
  s.add_dependency 'liquify', '~> 0.2.5'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
