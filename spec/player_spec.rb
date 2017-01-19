require 'player'

describe Player do
  subject(:samir) { Player.new('Samir') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(samir.name).to eq 'Samir'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(samir.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player by 10' do
      expect(mittens).to receive(:receive_damage)
      samir.attack(mittens)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit_points by 10' do
      expect { mittens.receive_damage }.to change { mittens.hit_points }.by(-10)
    end
  end
end
