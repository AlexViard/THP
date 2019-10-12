# Test si l'argument est valide

def get_argv
	if ARGV.empty?
    		abort("Il faut rentrer un nom de dosier !")
	else
		return ARGV.first
	end
end

# Creation des dossiers

def ruby_and_lib_dir
    Dir.mkdir(get_argv)
    Dir.mkdir("#{ARGV.join}/lib")
end

# Creation des fichiers

def create_file
    file_readme = File.open("#{ARGV.join}/README.md", "w+")
    file_gemfile = File.open("#{ARGV.join}/Gemfile", "w+")
    file_readme.puts("#{ARGV.join}")
    file_gemfile.puts("source 'https://rubygems.org'")
    file_gemfile.puts("ruby '2.5.1'")
    file_gemfile.puts("gem 'rspec'")
end

# Commande systeme

def systeme

Dir.chdir("#{ARGV.join}")
system("rspec --init")
system("git init")

end

# Lancement du programme

def perform
    ruby_and_lib_dir
    create_file
    systeme
end
perform
