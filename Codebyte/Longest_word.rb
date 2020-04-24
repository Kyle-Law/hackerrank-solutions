def LongestWord(sen)
  clean_s = sen.gsub(/\W/, ' ').split(' ')

  # code goes here
  return clean_s.max_by(&:length)

end

# keep this function call here 
puts LongestWord(STDIN.gets)