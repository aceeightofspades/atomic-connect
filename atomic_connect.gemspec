Gem::Specification.new do |s|
  s.name        = 'atomic_connect'
  s.version     = '0.0.2'
  s.date        = '2018-07-26'
  s.summary     = "RESTful connection to AtomicPay.com"
  s.description = "This Gem allows easy, RESTful calls to the make Vertcoin transactions via Atomic Pay!"
  s.authors     = ["Matt Thompson"]
  s.email       = 'matt@vertbase.com'
  s.require_path = 'lib'
  s.files       =  Dir['lib/atomic_connect.rb', 'lib/**/*']
  s.homepage    =
    'https://atomicpay.com'
  s.license       = 'MIT'
  s.add_runtime_dependency 'httparty', '~> 0.16'
end
