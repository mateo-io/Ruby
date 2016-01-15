## =Caesar cipher
#
#Creates a good but weak encryption mechanism, takes a word and an integer
# which is the numbe of shits each letter is moved down the alphabet

def caesar_cipher word, shift
	if shift>27
		shift=shift-26 until shift<27
	end
	
	place_holder=[]
	word.each_byte{|byte| place_holder<<byte}  #Stores the ord value of all the words
	place_holder.collect! do |byte| 
		if (65..90).include?(byte)
			if byte+shift>90
			 	byte+shift-26
			else
				byte+shift
			end
		elsif (97..122).include?(byte)
			if byte+shift>122
				byte+shift-26 
			else
				byte+shift
			end  
		else
			byte
		end
	end
	
	encrypted_word=place_holder.collect{|a| a.chr}.join
	puts encrypted_word
end

caesar_cipher("What a string!", 200)


