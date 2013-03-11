require './lib/game'
require './lib/cards'
require './lib/player'

players= [Player.new('Roma'), Player.new('Lida'), Player.new('Anton')]
cards= Cards.new
game =Game.new(players)

until game.over?
  players.each do |player|
    if(!player.hope)
      temp=cards.getCard
      player.takeCard(temp)
      puts "#{player.name}, you have cards: #{cards.valueCard(temp)}. Total points: #{player.points}"
      puts "Press 'f' to pas"  if player.points<21
      player.cont gets.chop
    end
  end
end

players.each do |player|
  puts "Sorry, #{player.name}. You lose. You have #{player.points} points."  if (player.points>21)
  puts "#{player.name}, you win!" if player.points==21
  puts "#{player.name}, you have #{player.points} points." if player.points<21
end