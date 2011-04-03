require 'lib/pdftools/version.rb'
Gem::Specification.new do |s|
  s.name = "pdftools"
  s.version = PDFTOOLS_VERSION
  s.description = "Ruby wrapper for working with PDF files. Uses the Multivalent Java  library"
  s.email = "info@napcs.com"
  s.summary = "Commandline tools for working with PDFs. Wraps Multivalent, a Java library"
  s.authors = ["Brian Hogan"]
  s.date = "2011-03-29"
  s.files = ["bin/pdfconcat",
            "jar/multivalent20060102.jar",  
            'lib/pdftools/version.rb',
            "lib/pdftools.rb",
            "lib/pdftools/tools.rb"
  ]
  s.executables = ["pdfconcat"]
  s.require_paths = ["lib"]
  s.rubygems_version = ["1.3.5"]
    if s.respond_to? :specification_version then
    s.specification_version = 3
    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end

