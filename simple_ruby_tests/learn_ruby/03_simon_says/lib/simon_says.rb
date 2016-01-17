def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times=2)
	word+(" "+word)*(times-1)
end

def start_of_word(str, index)
	str[0...index]
end

def first_word(str)
	(str.split(" "))[0]
end

def titleize(str)
	strings=str.split(" ")
	strings[0].capitalize!
	strings[1..-1].each{|word| word.capitalize! unless (word=="over" || word=="the" \
		|| word=="and")}
	strings.join(" ")
end

