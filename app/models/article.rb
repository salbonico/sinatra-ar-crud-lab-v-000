#Placeholder for a model

class Article < ActiveRecord::Base
@@all = []

attr_accessor :title, :content
attr_reader :id

def initiate(input)
  @title = input[:title]
  @content = input[:content]
  @@all << self
end

def self.all
@@all
end

def save

end

end
