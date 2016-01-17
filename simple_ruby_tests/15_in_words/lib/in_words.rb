module InWords #Took this one from the site to deal with bignums
	def in_words
		if self==0
			"zero"
		elsif self==1
			"one"
		elsif self==2
			"two"

		elsif self==3
			"three"

		elsif self==4
			"four"

		elsif self==5
			"five"

		elsif self==6
			"six"

		elsif self==7
			"seven"

		elsif self==8
			"eight"

		elsif self==9
			"nine"

		elsif self==10
			"ten"

		elsif self==11
			"eleven"

		elsif self==12
			"twelve"

		elsif self==13
			"thirteen"

		elsif self==14
			"fourteen"

		elsif self==15
			"fifteen"

		elsif self==16
			"sixteen"

		elsif self==17
			"seventeen"

		elsif self==18
			"eighteen"

		elsif self==19
			"nineteen"

		elsif self==20
			"twenty"

		elsif self==30
			"thirty"

		elsif self==40
			"forty"

		elsif self==50
			"fifty"

		elsif self==60
			"sixty"

		elsif self==70
			"seventy"

		elsif self==80
			"eighty"

		elsif self==90
			"ninety"

		elsif self==100
			"one hundred"

		elsif self==1000
			"one thousand"
		#Random numbers 21-99
	elsif self>20 && self<100
		decimal=(self.to_s[0]+"0").to_i
		digit=self.to_s[1].to_i

		"#{decimal.in_words} #{digit.in_words}"

		#Random numbers 101-999
	elsif self>100 && self<1000
		hun=(self.to_s[0]).to_i
		rest=(self.to_s[1..-1]).to_i

		return "#{hun.in_words} hundred" if rest==0

		"#{hun.in_words} hundred #{rest.in_words}" 

		#Random numbers 1001-9999
	elsif self>1000 && self<10000
		thousand=(self.to_s[0]).to_i
		rest=(self.to_s[1..-1]).to_i

		return "#{thousand.in_words} thousand" if rest==0

		"#{thousand.in_words} thousand #{rest.in_words}"

		#Random numbers 10.000-99.999
	elsif self>=10000 && self<100000
		tensThousand=(self.to_s[0..1]).to_i
		rest=(self.to_s[2..-1]).to_i		
		
		return "#{tensThousand.in_words} thousand" if rest==0

		"#{tensThousand.in_words} thousand #{rest.in_words}"

		#Random numbers 100.000-999.999
	elsif self>=100000 && self<1000000
		hundrThousand=(self.to_s[0..2]).to_i
		rest=(self.to_s[3..-1]).to_i

		return "#{hundrThousand.in_words} thousand" if rest==0

		"#{hundrThousand.in_words} thousand #{rest.in_words}"

		#Random numbers 1'000.000>999'999.999
	elsif self>=1000000 && self<999999999
		size=self.to_s.length
		case size
		when 7
			millDigit=self.to_s[0].to_i
			rest=self.to_s[1..-1].to_i
		when 8
			millDigit=self.to_s[0..1].to_i
			rest=self.to_s[2..-1].to_i		
		when 9
			millDigit=self.to_s[0..2].to_i
			rest=self.to_s[3..-1].to_i	
		end
		return "#{millDigit.in_words} million" if rest==0
		"#{millDigit.in_words} million #{rest.in_words}"

		#Random numbers 1'000.000.000 - 999'999.999.999 Three coma club!
	elsif self>=1000000000 && self<999999999999
		size=self.to_s.length
		
		case size
		when 10
			billDigit=self.to_s[0].to_i
			rest=self.to_s[1..-1].to_i
			
		when 11
			billDigit=self.to_s[0..1].to_i
			rest=self.to_s[2..-1].to_i		
		when 12
			billDigit=self.to_s[0..2].to_i
			rest=self.to_s[3..-1].to_i	
		end
		return "#{billDigit.in_words} billion" if rest==0
		"#{billDigit.in_words} billion #{rest.in_words}"

	else  #Trillions don't care about anything else

		size=self.to_s.length
		
		case size
		when 13
			triDigit=self.to_s[0].to_i
			rest=self.to_s[1..-1].to_i
		when 14
			triDigit=self.to_s[0..1].to_i
			rest=self.to_s[2..-1].to_i		
		when 15
			triDigit=self.to_s[0..2].to_i
			rest=self.to_s[3..-1].to_i	
		end
		return "#{triDigit.in_words} trillion" if rest==0
		"#{triDigit.in_words} trillion #{rest.in_words}"		
		end
	end
end

class Bignum
	include InWords
end

class Fixnum
	include InWords
end

