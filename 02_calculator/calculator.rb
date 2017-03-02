def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(myArray)
	myArray.inject(0){|result, element| result + element}
end

def multiply(myArray)
	myArray.inject(0){|result, element| result * element}
end

def power(x,y)
	x**y
end

def factorial(x)
	if x <= 1
		1
	else
		x * factorial(x - 1)
	end
end
