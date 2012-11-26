task :default => :test

desc 'Run tests'
task :test do
  sh "ruby -Ilib test/tc_ppt.rb"
end

desc 'Run a specific test, provide a test name or a /regexp/'
task :t, :nombre_test do |t, nombre|
  nombre_test = nombre[:nombre_test]
  sh "ruby -w -Ilib test/tc_ppt.rb --name #{nombre_test}"
end