require 'rspec/core/rake_task'

# Define a Rake task for running RSpec
RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = 'spec/**/*_spec.rb' # Specify the pattern for finding spec files
end

# Optionally, define a default task to run the specs
task default: :spec