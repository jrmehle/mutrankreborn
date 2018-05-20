require 'rails_helper'

RSpec.describe PlayerCardScorer do
  describe "#initialize" do
    let(:card) { PlayerCard.new(position: 'qb', style: 'dual_threat', game_version: 'madden18') }

    it 'takes a card and sets its position based on the card' do
      expect(described_class.new(card: card).position).to eq(card.position)
    end

    it 'takes a card and sets its style based on the card' do
      expect(described_class.new(card: card).style).to eq(card.style)
    end
  end

  describe "#positional_scorer" do
    it 'returns the HalfBackScorer for position "hb"' do
      card = PlayerCard.new(position: 'hb', style: 'speed', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::HalfbackScorer')
    end

    it 'returns the WideReceiverScorer for position "wr"' do
      card = PlayerCard.new(position: 'wr', style: 'complete', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::WideReceiverScorer')
    end

    it 'returns the QuarterbackScorer for position "qb"' do
      card = PlayerCard.new(position: 'qb', style: 'pocket_passer', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::QuarterbackScorer')
    end

    it 'returns the TightEndScorer for position "te"' do
      card = PlayerCard.new(position: 'te', style: 'recieving', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::TightEndScorer')
    end

    it 'returns the LeftTackleScorer for position "te"' do
      card = PlayerCard.new(position: 'lt', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::LeftTackleScorer')
    end

    it 'returns the LeftGuardScorer for position "te"' do
      card = PlayerCard.new(position: 'lg', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::LeftGuardScorer')
    end

    it 'returns the CenterScorer for position "te"' do
      card = PlayerCard.new(position: 'c', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::CenterScorer')
    end

    it 'returns the RightGuardScorer for position "te"' do
      card = PlayerCard.new(position: 'rg', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::RightGuardScorer')
    end

    it 'returns the RightTackleScorer for position "te"' do
      card = PlayerCard.new(position: 'rt', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::RightTackleScorer')
    end

    it 'returns the FullbackScorer for position "fb"' do
      card = PlayerCard.new(position: 'fb', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::FullbackScorer')
    end

    it 'returns the FreeSafetyScorer for position "fs"' do
      card = PlayerCard.new(position: 'fs', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::FreeSafetyScorer')
    end

    it 'returns the StrongSafetyScorer for position "ss"' do
      card = PlayerCard.new(position: 'ss', style: 'balanced', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::StrongSafetyScorer')
    end

    it 'returns the RightOutsideLinebackerScorer for position "rolb"' do
      card = PlayerCard.new(position: 'rolb', style: '43', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::RightOutsideLinebackerScorer')
    end

    it 'returns the MiddleLinebackerScorer for position "mlb"' do
      card = PlayerCard.new(position: 'mlb', style: 'user', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::MiddleLinebackerScorer')
    end

    it 'returns the LeftOutsideLinebackerScorer for position "lolb"' do
      card = PlayerCard.new(position: 'lolb', style: '43', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::LeftOutsideLinebackerScorer')
    end

    it 'returns the LeftEndScorer for position "le"' do
      card = PlayerCard.new(position: 'le', style: '43', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::LeftEndScorer')
    end

    it 'returns the RightEndScorer for position "re"' do
      card = PlayerCard.new(position: 're', style: '43', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::RightEndScorer')
    end

    it 'returns the DefensiveTackleScorer for position "dt"' do
      card = PlayerCard.new(position: 'dt', style: '43', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::DefensiveTackleScorer')
    end

    it 'returns the CornerbackScorer for position "cb"' do
      card = PlayerCard.new(position: 'cb', style: 'shut_down', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('Madden18::CornerbackScorer')
    end

    it 'returns the BaseScorer for position "huh"' do
      card = PlayerCard.new(position: 'huh', style: 'nothing', game_version: 'madden18')
      expect(described_class.new(card: card).positional_scorer.class.name)
        .to eq('BaseScorer')
    end
  end
end
