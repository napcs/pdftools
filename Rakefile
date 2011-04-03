require 'rake'
require 'rake/testtask' 
require 'rake/rdoctask' 
require 'lib/pdftools/version'

desc "Build the gem"
task :build do
  puts "Building the gem"
  `gem build pdftools.gemspec`
end

desc "build and install as a gem"
task :install => :build do
  puts "Installing..."
  `gem install pdftools-#{PDFTOOLS_VERSION}.gem`
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
