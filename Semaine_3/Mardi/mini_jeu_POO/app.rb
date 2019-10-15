require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane") # Declare les Players
player2 = Player.new("José")
puts "-------------------------------------"
puts "Voici l'état de chaque joueur :"
puts 
player1.show_state
player2.show_state
puts ""
puts "-------------------------------------" 

puts "Passons a la phase d'attaque :"

while player1.life_point > 0 && player2.life_point > 0 
  player1.attacks(player2)
  puts "-------------------------------------"
  if player1.life_point > 0 && player2.life_point > 0 # Pour eviter qui se tape quand ils sont morts 
    player2.attacks(player1)
  end 
end 
