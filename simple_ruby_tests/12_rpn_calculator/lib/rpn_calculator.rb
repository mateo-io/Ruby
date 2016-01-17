class RPNCalculator
	
	def push(num)
		@values||=[]
		@values.push(num)
	end

	def value
		@values.last
	end

	def plus
		raise "calculator is empty" unless @values
		@values.push(@values.pop+@values.pop)
	end

	def minus
		raise "calculator is empty" unless @values
		@values.push(-@values.pop+@values.pop)
	end

	def divide
		raise "calculator is empty" unless @values
		b=@values.pop.to_f; a=@values.pop.to_f
		@values.push(a/b)
		
	end

	def times
		raise "calculator is empty" unless @values
		a=@values.pop; b=@values.pop
		@values.push (a.to_f*b)
	end


  def tokens s
    s.split.map do |t|
      case t
      when '+', '-', '*', '/'
        t.to_sym
      else
        t.to_f
      end
    end
  end

  def evaluate s
    tokens(s).each do |t|
      case t
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push t
      end
    end
    value
  end
end
