require 'bundler'
Bundler.require

require_relative 'lib/app/board'
require_relative 'lib/app/player'
require_relative 'lib/app/menu'

choix = 1
while choix == 1 
	menu = Menu.new
	board = Board.new
	choix = menu.repeat
 end 
