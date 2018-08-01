require 'rspec'
require 'tower_of_hanoi'

describe TowerOfHanoi do
 let(:game) { TowerOfHanoi.new }
  let(:towers) { game.towers }

  describe "initialize" do
    it "sets up three towers" do
      expect(towers.length).to eq(3)
    end

    it "sets up three discs on the first tower" do
      expect(towers[0].length).to eq(3)
      expect(towers[1].length).to eq(0)
      expect(towers[2].length).to eq(0)
    end
  end


  describe "#move" do
    let(:disc) { towers[0].last }

    before(:each) do
      game.move(0, 1)
    end

    # it "receives the users move as arguments" do
    #   expect(game.move).to receive(:get_move)
    # end
    it "moves a disc from one peg the next peg" do
      expect(towers[1].length).to eq(1)
      expect(towers[0].length).to eq(2)
    end

  end

  describe "#valid_move?" do
    let(:invalid_move_tow) { game.towers }
    it "returns false if from tower is empty" do
      expect(game.valid_move?(1, 0)).to be_falsey
    end

    it "returns false if the disc in the from tower is greater than the disc in the to tower" do
       game.move(0, 1)
       expect(game.valid_move?(0, 1)).to be_falsey
    end

  end

end
