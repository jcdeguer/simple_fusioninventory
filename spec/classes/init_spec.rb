require 'spec_helper'
describe 'simple_fusioninventory' do

  context 'with defaults for all parameters' do
    it { should contain_class('simple_fusioninventory') }
  end
end
