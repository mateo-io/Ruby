def reverser(&block)
	words=block.call.split(" ")
	words.each{|word| word.reverse!}
	words.join(" ")
end

def adder(num=1, &block)
	block.call+num
end

def repeater(num=1, &block)
	num.times{block.call}
end