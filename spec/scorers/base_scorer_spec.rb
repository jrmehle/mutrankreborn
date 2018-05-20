require 'rails_helper'

RSpec.describe BaseScorer do
  subject { described_class.new(card: PlayerCard.new, style: 'balanced') }

  describe "#score" do
    it 'has a default score of 0.0' do
      expect(subject.score).to eq(0.0)
    end
  end
end
