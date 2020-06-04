Gem::Specification.new do |s|
    s.name         = "brutalitops"
    s.version      = "1.0.2"
    s.author       = "andydwyer"
    s.email        = "ktanyag@gmail.com"
    s.homepage     = "https://github.com/andydwyer/brutalitops"
    s.summary      = "Generate permutations and convert to array, print to csv, or print to console"
    s.description  = "Generates permutations and returns an array, or prints to csv, or prints to console. See https://github.com/andydwyer/brutalitops for usage."
    s.licenses     = ['MIT']
  
    s.files         = Dir["{lib,spec}/**/*"] + %w(LICENSE README)
    s.test_files    = Dir["spec/**/*"]

  
    s.required_ruby_version = '>=1.9.2'
  end