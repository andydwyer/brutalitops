Gem::Specification.new do |s|
    s.name         = "brutalitops"
    s.version      = "1.0.0"
    s.author       = "andydwyer"
    s.email        = "ktanyag@gmail.com"
    s.homepage     = "https://github.com/andydwyer/brutalitops"
    s.summary      = "Generate permutations and convert to array, print to csv, or print to console"
    s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
    s.licenses     = ['MIT']
  
    s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
    s.test_files    = Dir["spec/**/*"]
    s.executables   = [ 'brutalitops' ]
  
    s.required_ruby_version = '>=1.9.2'
  end