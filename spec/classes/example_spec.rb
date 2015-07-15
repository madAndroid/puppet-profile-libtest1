require 'spec_helper'

os = ENV['BEAKER_set'] ||= 'centos6'

case os
when /default/
  osversion = '6'
when /centos6/
  osversion = '6'
when /centos7/
  osversion = '7'
else
  raise "Operating system: #{os} is not supported"
end

describe 'libtest1' do

  include_context "hieradata"
  include_context "facter"

  context 'supported operating systems' do
    describe "libtest1 class without any parameters on CentOS #{osversion}" do
      let(:params) {{ }}
      let(:facts) do
        default_facts.merge({
        :operatingsystemmajrelease => osversion,
        })
      end

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('libtest1') }
      it { is_expected.to contain_class('libtest1::params') }

      it { is_expected.to contain_class('libtest1::install').that_comes_before('libtest1::config') }
      it { is_expected.to contain_class('libtest1::config') }
      it { is_expected.to contain_class('libtest1::service').that_subscribes_to('libtest1::config') }


      ## Amend as appropriate
      # it { is_expected.to contain_service('libtest1') }
      # it { is_expected.to contain_package('libtest1').with_ensure('present') }

    end
  end

end
