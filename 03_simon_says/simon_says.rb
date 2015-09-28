def echo(x)
	x
end

def shout (x)
	x.upcase
end

def repeat(x, y=2)
    ([x] * y).join(" ")
end

def start_of_word(x, y=1)
    return x.chars.first(y).join()
end

def first_word(x)
    x.split(" ").first()
end

def titleize(x)
    words = x.split(" ").each do |word|
    
    unless word === "and" || word === "over" || word === "the"
    word.capitalize!
    end
    end
    words.first.capitalize!
    words.join(" ")
end