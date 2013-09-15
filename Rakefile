require "bundler/gem_tasks"

desc 'Tags version, pushes to remote, and pushes gem'
task :release => :build do
  sh "git tag v#{Tabs2spaces::VERSION}"
  sh "git push origin master"
  sh "git push origin v#{Tabs2spaces::VERSION}"
  sh "gem push tabs2spaces-#{Tabs2spaces::VERSION}.gem"
end

