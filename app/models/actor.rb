class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
       # binding.pry
        return "#{self.characters.map{|n|n.name}.first} - #{self.shows.map{|sh| sh.name}.first}"
    end

  
end