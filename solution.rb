module TextAnalyzer
	@body
	def num_words
		puts @body
	end
	def num_chars
		puts @body
	end
end

class Article
	include TextAnalyzer
	def initialize(body)
		print @body	
	end	
end

class Comment
	include TextAnalyzer
	def initialize(body)
		print @body
	end	
end

a1 = Article.new("Este es el cuerpo del artículo")
a1.num_chars #=> 30

c1 = Comment.new("Este es un comentario")








