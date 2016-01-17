def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(arr)
	res=0
	arr.each{|num| res+=num}
	res
end

def multiply(*arr)
	total=1
	arr.each{|num| total*=num}
	total
end

def power(num,pow)
	num**pow
end


def factorial(num)
	return 0 if num==0
	total=(1..num).inject{|acc, num| acc*=num}
	total
end