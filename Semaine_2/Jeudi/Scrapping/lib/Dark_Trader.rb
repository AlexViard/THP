require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'colorize'

def price 
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")) 
	price = page.xpath("//a[@class ='price']")
	
	if price.any?
		puts "Bravo ! Liste des prix obtenus".green
	else
		puts "Erreur ! Liste des prix non obtenus".red
	end	
	
	return price
  end 


def symbole 
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	devise_crypto = page.xpath('//td[3]')
	
	if devise_crypto.any?
		puts "Bravo ! Liste des valeurs obtenues".green 
	else 
		puts "Erreur ! Liste des valeurs non obtenues".red
	end 
	return devise_crypto
  end


def trader 
	devise = symbole 
	prix = price 
	
	tab = []
	i = 0
 
	while i < devise.size
		crypto_hash = Hash.new			
		crypto_hash[devise[i].text] = prix[i].text.delete('$').to_f
		tab << crypto_hash
	i = i + 1 
			
	end
  
	return tab 
end 


def perform 

puts trader 

end 
perform
