
class Scrappeur

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


	def save_as_JSON
	  emails = hash_make
	  tab_json = []
	  i = 0 	
	  while i < emails.size	
	    tab_json << emails[i]
	    i = i + 1 	
	  end 
	  File.open("db/emails.json","w") do |f|
  	    f.write(tab_json.to_json)
	  end 
	end 

	def save_as_spreadsheet
	  session = GoogleDrive::Session.from_config("config.json")
	  ws = session.spreadsheet_by_key("1S_3JRog5_wTgyk1N9aQSE1lMp9nIJYVi4SLY0wKx2bM").worksheets[0]  
	

	end

	def save_as_csv
	  tab_emails = hash_make
	  tab_csv = []
	  i = 0
	  while i < tab_emails.size
	    tab_csv << tab_emails[i]
	    i = i + 1
	  end 
	  CSV.open("emails.csv", "w") do |csv|
	    csv << tab_csv
	  end 
	end 



end 

	
	
