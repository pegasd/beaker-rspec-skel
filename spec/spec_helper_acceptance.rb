require 'beaker-rspec'

install_puppet_agent_on(hosts, {
  :puppet_agent_version => '1.4.1',
  :default_action       => 'gem_install',
})

RSpec.configure do |c|
  c.formatter = :documentation
end
