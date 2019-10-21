require 'gossip'
class ApplicationController < Sinatra::Base
	get'/' do #Lister tout les potins 
	  erb :index, locals: {gossips: Gossip.all}
	end
 	get'/gossips/new/' do #nouveau potin
	  erb :new_gossip
	end
	post '/gossips/new/' do #creation d'un nouveau potin
	  Gossip.new(params["gossip_author"], params["gossip_content"]).save
	  redirect '/'
	end
	get '/gossips/:id/' do #affichage d'un potin 
	   erb :show, locals: {show: Gossip.all[params[:id].to_i], id: params[:id].to_i}
	end	
end 
