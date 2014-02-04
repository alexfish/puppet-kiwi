require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'kiwi' do
  it do
    should contain_repository('/tmp/kiwi').with({
        'source'   => 'allending/Kiwi',
        'provider' => 'git',
    })
  end

  it do
    should contain_exec("/tmp/kiwi/Xcode Templates/install-templates.sh")
  end
end
