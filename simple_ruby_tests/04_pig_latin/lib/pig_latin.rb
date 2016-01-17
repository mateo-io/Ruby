def translate(str)
	sol=[]
	words=str.split(" ")
	words.each do |word|
		 if word.index(/[aeiou]/)==0  
		 	sol<<word+"ay" 
		 elsif word[0..2].index(/[aeiou]/).nil? || word.index("qu")==1
		 	sol<<word[3..-1]+word[0..2]+"ay" 	
		 elsif word[0..1].index(/[aeiou]/).nil? || word.index("qu")==0
		 	sol<<word[2..-1]+word[0..1]+"ay"
		 else
		 	sol<<word[1..-1]+word[0]+"ay"
		end
	end
	sol.join(' ')

end

