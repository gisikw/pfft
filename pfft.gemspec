# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','pfft','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'pfft'
  s.version = Pfft::VERSION
  s.author = 'Your Name Here'
  s.email = 'kevin@kevingisi.com'
  s.homepage = 'http://kevingisi.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A personal finance fun toolkit'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','pfft.rdoc']
  s.rdoc_options << '--title' << 'pfft' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'pfft'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('minitest')
  s.add_runtime_dependency('gli','~> 2.21.1')
end
