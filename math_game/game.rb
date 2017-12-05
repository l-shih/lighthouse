# Player
# Question, made by adding two numbers between 1 and 20
# 
require './player'
require './question'

class Game

  def self.main
    game = Game.new
    game.start
  end

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]

    @current_player = 0
  end

  def current_player
    @players[@current_player]
  end

  def start
    
    until game_over? do
      puts "----- NEW TURN -----"
      question = Question.new
      puts "Question for #{current_player.name}: #{question.math_question}"
      if gets.chomp.to_i != question.answer
        deduct_point
        puts "WRONG"
      end
      swap_players
      print_scores
    end

    puts "----- GAME OVER -----"

    if @players[0].points == 0
      puts "You win #{@players[1].name}!"
    elsif
      puts "You win #{@players[2].name}"
    end

  end

  def game_over?
    @players.any? { |player| player.points == 0 }
  end

  def swap_players
    @current_player = (@current_player + 1) % @players.length
  end

  def deduct_point
    current_player.deduct_point
  end

  def print_scores
    # @players.each do |player|
    #   puts "#{player.name} has #{player.points}/3 points"
    # end
    puts "#{@players[0].name}: #{@players[0].points}/3 vs. #{@players[1].name}: #{@players[1].points}/3"
  end


end
  

Game.main