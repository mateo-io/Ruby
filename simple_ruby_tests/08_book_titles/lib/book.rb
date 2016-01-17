class Book
	attr_reader :title
		def title=(title)
			exceptions=["an","and","in","on","of","the","a"]
			arr=title.split(" ")
			arr.each do |word|
				if arr.index(word)==0 || (!exceptions.include?(word))
					word.capitalize!
				end
			end
			@title=arr.join(" ")
			
		end

	end
	
