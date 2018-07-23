Gem::Specification.new do |s|
  s.name        = 'coin_connect'
  s.version     = '1.0.0'
  s.date        = '2018-06-27'
  s.summary     = "RESTful connection to Vertcoin RPC API"
  s.description = "This Gem allows easy, RESTful calls to the Vertcoin RPC API!"
  s.authors     = ["Matt Thompson"]
  s.email       = 'matt@vertbase.com'
  s.require_path = 'lib'
  s.files       =  Dir['lib/atomic_connect.rb', 'lib/**/*']
  s.homepage    =
    'http://vertbase.com'
  s.license       = 'MIT'
  s.add_runtime_dependency 'httparty', '~> 0.16'
end
