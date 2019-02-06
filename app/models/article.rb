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

      sql = <<-SQL
        INSERT INTO articles (title, content)
        VALUES (?, ?)
      SQL

      DB[:conn].execute(sql, self.name, self.album)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]

end

end
