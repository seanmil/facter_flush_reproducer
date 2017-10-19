require 'spec_helper'

describe 'fact2', type: :fact do
  subject { Facter.fact(:fact2).value }

  context 'with default values' do
    it { is_expected.to match(/fact1/) }
    it { is_expected.not_to match(/asdf/) }
  end

  context 'with fact1 mocked, using Facter.flush' do
    before do
      Facter.flush
      allow(Facter.fact(:fact1)).to receive(:value).and_return('asdf')
    end

    it { is_expected.not_to match(/fact1/) }
    it { is_expected.to match(/asdf/) }
  end

  context 'with fact1 mocked, using Facter.clear' do
    before do
      Facter.clear
      allow(Facter.fact(:fact1)).to receive(:value).and_return('asdf')
    end

    it { is_expected.not_to match(/fact1/) }
    it { is_expected.to match(/asdf/) }
  end
end
