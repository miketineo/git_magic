# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "git_magic/version"

Gem::Specification.new do |spec|
  spec.name          = "git_magic"
  spec.version       = GitMagic::VERSION
  spec.authors       = ["Miguel Tineo"]
  spec.email         = ["miketineo@gmail.com"]

  spec.summary       = %q{git magic expose some useful command to increase productivity for large and fastly growing codebases.}
  spec.description   = %q{git commands to show some magic, all git aliases in one place, find commits status of commits, branches, history, etc}
  spec.homepage      = "https://github.miketineo.io/git_magic"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["git_magic"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
