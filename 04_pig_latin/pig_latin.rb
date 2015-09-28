def translate(x)
    ary = x.split(" ")
    vowels = %w(a e i o u y)
    double = %w(qu)
    ary.each do |word|
        firstTwo = word.chars.first(2) 
        firstLetter = word.chars.first
        until vowels.include?(firstLetter)
         if not double.include?(firstTwo)
                z = word.slice!(0..1)
                word << z
                firstLetter = word.chars.first
            else
                 y = word.slice!(0)
                word << y
                 firstLetter = word.chars.first
            end
        end
        word << "ay"
    end
    ary.join(" ")

end


=begin
def translate(word)
    vowels = %w(a e i o u y)
    moreWords = word.split(" ")
    moreWords.each do |x|
       firstLetter = x.split("").first
       if not vowels.include?(firstLetter)
            x.slice!(0)            
            x << firstLetter
            translate(x)
        else
            x << "ay"            
        	return x
        end        
    end     
end
=end