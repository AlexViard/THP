require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'colorize'



def get_townhall_email(url)

		page = Nokogiri::HTML(open("#{url}"))
		email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()")
	
		if email.any? 
			puts "Bravo ! Email obtenu".green
		else 
			puts "Erreur ! Email non obtenu".red 
		end
		return email
 
end


def get_townhall_city

		page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
		tab_city = page.xpath("//a[@class = 'lientxt']")

		if tab_city.any?
			puts "Bravo ! Liste des villes obtenus".green
		else
			puts "Erreur ! Liste des villes non obtenus".red
		end

		return tab_city
  end

def get_townhall_urls

		tab_email = []
		tab_city = get_townhall_city
	
		i = 0	
		while i < tab_city.size
		a = tab_city[i]	
		tab_email << get_townhall_email("http://annuaire-des-mairies.com/#{a['href']}") 
		i = i + 1	
		end
		return tab_email
end


def hash_make

tab_email = get_townhall_urls
tab_city = get_townhall_city

tab = []
i = 0
 
while i < tab_city.size
		mairies_hash = Hash.new
		mairies_hash[tab_city[i].text] = tab_email[i].text
		tab << mairies_hash
		i = i + 1
end 

		return tab
end 

def perform 
		
	puts hash_make
end 
perform 
