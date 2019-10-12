require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'colorize'


def deputes

		page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
		tab_deputes = page.xpath("//ul[@class='col3']//li/a")

		if tab_deputes.any?
			puts "Bravo ! Liste des deputes obtenus".green
		else
			puts "Erreur ! Liste des deputes non obtenus".red
		end

		return tab_deputes
  end


def email_deputes(url)

		page = Nokogiri::HTML(open("#{url}"))
		email = page.xpath("//*[@id='haut-contenu-page']/article/div[3]/div/dl/dd[4]/ul/li[2]/a")
		if email.any?
			puts "Bravo ! Email du deputes obtenue ".green
		else
			puts "Erreur ! Email du deputes non obtenue".red
		end

		return email

end

def url_email
	tab_deputes = deputes
	i = 0
	tab_email = []
	
	while i < tab_deputes.size
		a = tab_deputes[i]
		tab_email << email_deputes("http://www2.assemblee-nationale.fr#{a['href']}")
		i = i + 1 
	end 
	return tab_email 
end 

def hash_make

	tab_email = url_email
	tab_deputes = deputes 

tab = []
i = 0

while i < tab_deputes.size
		deputes_hash = Hash.new
		deputes_hash[tab_deputes[i].text] = tab_email[i].text
		tab << deputes_hash
		i = i + 1
end

		return tab



end

def perform
puts hash_make
end
perform
