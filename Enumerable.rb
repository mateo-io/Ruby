module Enumerable
	def my_each 
	  0.upto(self.size-1) do |i|
	  	yield self[i]
	  end

	end

	def my_each_with_index
		0.upto(self.size-1) do |i|
			yield self[i],i
		end
	end

	def my_select &block
	  if !block_given?
	  	return to_enum 
	  else
	  	value_holder=[]
	  	self.my_each{|val| value_holder<<val if block.call(val)}
	  	end
	  value_holder
	end

def my_all? &block
	  if !block_given?
	  	return to_enum 
	  else
	  	self.my_each{|val| return false if !block.call(val)}
	  end
	  true
	end

def my_any? &block
	  out=false
	  if !block_given?
	  	return to_enum :my_any
	  else
	  	self.my_each{|val| out=true if block.call(val)}
	  end
	  out
	end

def my_none? &block
	  out=true
	  if !block_given?
	  	self.my_each{|val| out=false if val==true}
	  else
	  	self.my_each{|val| out=false if block.call(val)}
	  end
	  out
	end

def my_count param=nil, &block
  count=0
  if param.nil? & !block_given?
  	self.each{|i| count+=i}
  elsif block_given?
  	self.each{|i| count+=1 if yield(i)}
  else
  	self.my_each{|i| count+=1 if i==param}
  end
  count
end


def my_map &block
  if !block_given?
  	return to_enum :my_map
  else
  	value_holder=[]
  	self.my_each{|val| value_holder<<block.call(val)}
  	end
  value_holder
end

def my_inject iter=nil, &block
		
      if iter==nil
      	iter=self[0]
		1.upto(self.size-1) do |i|
			iter=block.call(iter,self[i])
		end
	  else
	  	0.upto(self.size-1) do |i|
	  		iter=block.call(iter,self[i])
		end
	  end
	iter
end




end






#[1,2,3].my_each {|a| print a*2}

#[1,42,3].my_each_with_index {|a,i| puts "Index #{i} and value: #{a}"}

#print [1,2,3,4].my_select{|num| num%2==0}

#puts [2,4,6].my_all?{|num| num%2==0}

#puts [1,3,4,7,9].my_any?{|num| num%2==0}

#puts %w{ant bear cat}.my_none? { |word| word.length >= 4 } 

#print [1,2].my_count

#print [1,2,2].my_count(2)

#print [1,2,3,4].my_count{|i| i%2==0}

#print [1,2,3].my_map{|i| i*2}

#puts [1,2,3,4].my_inject{|iter, obj| obj*iter}

#puts [1,2,3,4].inject{|iter, obj| obj*iter}  #This is here to test

def multiple_els array
	puts array.inject{|iter,obj| iter*obj}
end

#multiple_els([2,4,5])