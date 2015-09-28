def add(x, y)
	x+y
end

def subtract(x, y)
	x-y
end

def sum(ary)
	y = 0
	ary.each do |x| 
		y += x
	end
	return y
end

def multiply(*p)
   r = 1
   ary = *p.push()
   ary.each do |x| 
    r *= x
    end
    return r
end

def power(x, y)
  z = 1
      x.times do
      z *= y    
     end
  return z
end

def factorial(x)
    result = 1    
    while x > 0 do
        result *= x
        x -= 1
    end     
    return result
end