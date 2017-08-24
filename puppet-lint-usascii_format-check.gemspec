Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-usascii_format-check'
  spec.version     = '1.0.0'
  spec.homepage    = 'https://github.com/jpmasters/puppet-lint-usascii_format-check'
  spec.license     = 'MIT'
  spec.author      = 'Jon Masters'
  spec.email       = 'jon.masters@sky.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'A puppet-lint plugin to check files contain only US ASCII.'
  spec.description = <<-EOF
    A puppet-lint plugin to check that manifest files contain only US ASCII.
  EOF
 
  spec.add_dependency             'puppet-lint', '>= 1.0', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
25 end
