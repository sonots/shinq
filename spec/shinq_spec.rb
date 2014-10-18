require 'spec_helper'
require 'shinq'

describe Shinq do
  subject { Shinq }

  it { is_expected.to respond_to(:configuration) }
  it { is_expected.to respond_to(:configuration=) }

  describe ".configuration" do
    context "when configuration is not present" do
      let(:shinq) { Shinq }

      it { expect(shinq.configuration).to be_a_kind_of(Shinq::Configuration) }
    end

    context "when configuration is present" do
      before do
        Shinq.configuration = Hash.new
      end

      let(:shinq) { Shinq }

      it { expect(shinq.configuration).to be_a_kind_of(Hash) }
    end
  end

  describe ".configuration=" do
    context "when specify args" do
      let(:shinq) { Shinq }
      let(:args) { Hash.new }

      it 'is expect to return specified args' do
        expect(shinq.configuration=(args)).to eq args
      end
      it { expect(shinq.configuration).to eq args }
    end
  end
end
