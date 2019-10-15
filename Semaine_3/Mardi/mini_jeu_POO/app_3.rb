require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

game1 = Game.new("Alex")

while  game1.is_still_ongoing?
  game1.menu
  print "> "
  reponse = gets.chomp.to_s
  game1.menu_choice(reponse)
  game1.enemies_attack
end

game1.end  

