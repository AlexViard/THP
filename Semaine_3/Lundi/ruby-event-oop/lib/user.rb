class User
	attr_accessor :email, :age
	@@user_all = []
	@@email_all_user = []

	def initialize(email_to_save, age_to_save)
	  @email = email_to_save
	  @age = age_to_save
	  @@user_all << self
	  @@email_all_user << self.email 
	end 

	def self.all
    		return @@user_all
  	end 
	
	def self.find_by_email(enter_email)
	i = 0  
	while i < @@email_all_user.size
	  	if @@email_all_user[i] == enter_email
			return @@user_all[i]
		end
		i = i + 1
	  end
		puts "L'utilisateur demander n'existe pas !"
	end 
end

