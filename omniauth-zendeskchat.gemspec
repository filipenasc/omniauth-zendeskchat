
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/zendeskchat/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-zendeskchat"
  spec.version       = Omniauth::Zendesk::Chat::VERSION
  spec.authors       = ["Filipe Nascimento"]
  spec.email         = ["filipemateusn@gmail.com"]

  spec.summary       = %q{Create a summary}
  spec.description   = %q{Create a description}
  spec.homepage      = "https://github.com/filipenasc/omniauth-zendeskchat"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'omniauth', '~> 1.6', '>= 1.6.1'
  spec.add_dependency 'omniauth-oauth2', '~> 1.4'
end
