def disemvowel(str)
  str.gsub(/a|e|i|o|u|A|E|I|O|U/,'')
end

p "This website is for losers LOL!".gsub(/(aeiou)/,'')