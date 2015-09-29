def translate(x)
    ary = []
    vowels = %w(a e i o u y)
    dual = %w(qu)
    moreWords = x.split(" ")
    moreWords.each do |x|
    firstLetter = x.chars.first
    firstTwo = x.chars.first(2).join
    until  dual.include?(firstTwo) || vowels.include?(firstLetter)
                x.slice!(0)
                x << firstLetter
                firstLetter = x.chars.first
                firstTwo = x.chars.first(2).join
    end
    if dual.include?(firstTwo)
            x.slice!(0..1)
            x << firstTwo
    end
             x << "ay"
            puts x
            ary.push(x)
    end
    ary.join(" ")
end
