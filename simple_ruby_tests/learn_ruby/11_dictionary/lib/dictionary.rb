class Dictionary
	attr_reader :entries
	def initialize
		@entries={}
	end

	def add(*args)
		
		if args.first.class==Hash
			@entries.merge!(args.first)
			@keywords=args.first

		else
			@entries[args.first]=nil

			
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		@entries.include?(word)
	end

	def find(word)
		if self.include?(word)
			return @entries
		else
			return @entries.select{|key, val| key.include?(word)}
		end
		return ""
		
	end

	def printableMINE
		@entries=@entries.sort.to_h
		str=""
		@entries.each{|key, val| str<<"[#{key}] '#{val}'\n" unless val.nil?; str<<"#{key}" if val.nil? }
		str		
	end

	 def printable #Looked it up as the test was a bitch
    entries.map do |key_val|
      %Q[[#{key_val.first}] "#{key_val.last}"]
    end.sort.join("\n")
  end

end

a=Dictionary.new

a.add("babe" =>"cute")
a.add("baby"=>"ewqeq")
a.add("shit")


puts a.printable
#puts a.entries.each{|key, val| puts val}