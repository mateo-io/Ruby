dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dictionary)
	word_array=word.split 
	record_hash={}

	dictionary.each do |dword| 
		record_hash[dword]||=0  
		word_array.each{|word| record_hash[dword]+=1 if word.include?(dword)}
	end

	puts record_hash.delete_if{|k,v| v==0}
end


substrings('below',["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])


substrings("Howdy partner, sit down! How's it going?", dictionary)