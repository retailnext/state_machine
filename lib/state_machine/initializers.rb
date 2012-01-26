# Load each application initializer

if ENV['STATEMACHINEINITIALIZERS']
  Dir["#{File.dirname(__FILE__)}/initializers/*.rb"].sort.each do |path|
    require "state_machine/initializers/#{File.basename(path)}"
  end
end
