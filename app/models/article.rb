#Placeholder for a model

class Article < ActiveRecord::Base


attr_accessor :title, :content
attr_reader :id

def initiate(input)
  @title = input["title"]
  @content = input["content"]

end

#def self.all
#@@all
#end

#def save

#      sql = <<-SQL
#        INSERT INTO articles (title, content)
#        VALUES (?, ?)
#      SQL

#      ActiveRecord::Base[:database].execute(sql, self.title, self.content)


#end

end
