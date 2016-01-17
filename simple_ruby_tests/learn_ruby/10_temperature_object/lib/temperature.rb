class Temperature
	def initialize(hash)
		@scale=hash.keys[0]
		@value=hash[@scale]
	end

	def in_celsius
		if @scale==:c
			@value
		else
			(@value-32)*5.0/9
		end
	end

	def in_fahrenheit
		if @scale==:f
			@value
		else
			(@value*9/5.0)+32
		end
	end

	def self.from_celsius(value)
		Temperature.new(:c => value)
	end

	def self.from_fahrenheit(value)
		Temperature.new(:f => value)
		
	end
end

class Celsius < Temperature
	def initialize(val)
		@scale=:c
		@value=val
	end
end

class Fahrenheit < Temperature
	def initialize(val)
		@scale=:f
		@value=val
	end
end

