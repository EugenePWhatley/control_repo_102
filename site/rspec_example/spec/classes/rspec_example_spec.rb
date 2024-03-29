require 'spec_helper'

describe 'rspec_example' do
  it { is_expected.to compile }
end

describe 'rspec_example' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
