#Placeholder for a model

class Article < ActiveRecord::Base
@@all = []

attr_accessor :title, :content

def self.all
@@all
end

end
