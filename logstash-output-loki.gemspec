Gem::Specification.new do |s|
  s.name    = 'logstash-output-loki-tenants'
  s.version = '1.0.3'
  s.authors = ['Co.brick']
  s.email   = ['aiops.dev@cobrick.com']

  s.summary       = 'Output plugin to ship logs to a Grafana Loki server'
  s.description   = 'Output plugin to ship logs to a Grafana Loki server'
  s.homepage      = 'https://rubygems.org/gems/logstash-output-loki-tenants'
  s.license       = 'Apache-2.0'
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  #
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency "logstash-codec-plain", "3.0.6"
  s.add_development_dependency 'logstash-devutils', "2.0.2"
end
