class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1)
    @sequence_length = sequence_length
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
      sleep(5)
      system("clear")
    end
  end

  def require_sequence
    puts "To win the game do the following"
    puts "enter the colors in the displayed order"

    user_colors = []
    4.times do |el|
      puts " enter the color #{el}"
      user_colors << gets.chomp!.strip!.downcase
    end
    4.times do |el|
      if @seq[el] != user_colors[el]
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    4.times do
      @seq << COLORS.sample
    end
  end

  def round_success_message
    puts "Round Successful"
  end

  def game_over_message
    puts "Game_over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
