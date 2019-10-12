require 'launchy'

def get_argv
	
	if ARGV.empty?
		abort("Il faut rentrer une recherche Google !")
	else 
		return ARGV 
	end
end 

def build_url
	
	url = "https://www.google.com/search?q=#{get_argv.join('+')}"
	return url 
end 

def search(url)

Launchy.open(url)

end 

def perform

	 search(build_url)
end
perform 
