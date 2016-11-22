class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |el, idx|
      if idx != 6 && idx != 13
        4.times do
          el << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos > 12 ||  start_pos < 0
      raise "Invalid starting cup"
    end

    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    no_of_stones = @cups[start_pos]
    new_pos = start_pos

    @cups[start_pos] = []

    until no_of_stones.empty?
      new_pos += 1
      new_pos = 0 if new_pos > 13

      if new_pos == 6
        @cups[6] << no_of_stones.pop if current_player_name == @name1
      elsif new_pos == 13
        @cups[13] << no_of_stones.pop if current_player_name == @name2
      else
        @cups[new_pos] << no_of_stones.pop
      end
    end

    render
    next_turn(new_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if @cups[0..6].all?{|el| el.empty?}
      return true
    elsif @cups[7..12].all?{|el| el.empty?}
      return true
    else
      return false
    end
  end

  def winner
    stones_player1 = @cups[6].count
    stones_player2 = @cups[13].count

    if stones_player1 == stones_player2
      :draw
    else
      stones_player1 > stones_player2 ? @name1 : @name2
    end

  end
end
