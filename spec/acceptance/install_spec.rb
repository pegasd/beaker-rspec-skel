require 'spec_helper_acceptance'

test_name 'puppet install test' do
  step 'puppet -V returns 4.4.1' do
    hosts.each do |host|
      on host, puppet('-V'), { :stdout => "4.4.1" }
    end
  end
end
