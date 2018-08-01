
class TowerOfHanoi
  attr_accessor :towers

  def initialize
    @towers = [ [3, 2 ,1], [], []   ]
  end

  def play
    until won?
      move(get_move)
    end
  end

  def move(from_tower, to_tower)
    towers[to_tower] << towers[from_tower].pop if valid_move?(from_tower, to_tower)

  end

  def valid_move?(from_tower, to_tower)

    return false if towers[from_tower].empty?

    if !towers[to_tower].empty?
      return false if towers[from_tower].last > towers[to_tower].last
    end
    true
  end

  def get_move
    puts "What tower are you taking from, to the tower you are moving it to, (e.g. '0,1') "
    input = gets.chomp.split(',').map { |int| Integer(int) }
  end

  # def won?
  #
  # end




end
