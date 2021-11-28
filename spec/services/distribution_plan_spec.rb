require 'rails_helper'

RSpec.describe DistributionPlan do
  let(:instance) { DistributionPlan.new(voices_per_user, distributable_entities) }

  describe '#socialist' do
    subject { instance.socialist }

    context 'when there are equals' do
      let(:voices_per_user) { { a: 11, b: 4, c: 4, d: 1 } }
      let(:distributable_entities) { 10 }

      it { is_expected.to eq({ a: 5, b: 2, c: 2, d: 1 }) }
    end

    context 'when like sample 2021-11-08' do
      let(:distributable_entities) { 131 }
      let(:voices_per_user) do
        ('01'..'28').zip([52,49,37,26,18,14,9,7,6,4,3,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1]).to_h
      end
      let(:expected_entitlements) do
        ('01'..'28').zip([20,21,20,14,10, 8,5,4,4,3,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1]).to_h
      end

      it { is_expected.to eq(expected_entitlements) }
    end
  end

  describe '#log10_social' do
    subject { instance.log10_social }

    context 'when there are equals' do
      let(:voices_per_user) { { a: 11, b: 4, c: 4, d: 1 } }
      let(:distributable_entities) { 10 }

      it { is_expected.to eq({ a: 5, b: 2, c: 2, d: 1 }) }
    end

    context 'when like sample 2021-11-08' do
      let(:distributable_entities) { 131 }
      let(:voices_per_user) do
        ('01'..'28').zip([52,49,37,26,18,14,9,7,6,4,3,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1]).to_h
      end
      let(:expected_entitlements) do
        ('01'..'28').zip([26,25,18,12, 8, 7,4,3,3,3,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1]).to_h
      end

      it { is_expected.to eq(expected_entitlements) }
    end
  end
end
