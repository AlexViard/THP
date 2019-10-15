require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# INTRO

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"

puts "Comment t'appelles-tu ?".yellow
print "> "
name_human = gets.chomp

game1 = Game.new(name_human)

# JEU
while  game1.is_still_ongoing?
  game1.menu
  print "> ".yellow
  reponse = gets.chomp.to_s
  game1.menu_choice(reponse)
  game1.enemies_attack
end

game1.end  

