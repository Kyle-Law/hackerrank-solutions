# Complete the timeInWords function below.
def in_words(int)
    numbers_to_name = {
        1000000 => "million",
        1000 => "thousand",
        100 => "hundred",
        90 => "ninety",
        80 => "eighty",
        70 => "seventy",
        60 => "sixty",
        50 => "fifty",
        40 => "forty",
        30 => "thirty",
        20 => "twenty",
        19=>"nineteen",
        18=>"eighteen",
        17=>"seventeen", 
        16=>"sixteen",
        15=>"fifteen",
        14=>"fourteen",
        13=>"thirteen",              
        12=>"twelve",
        11 => "eleven",
        10 => "ten",
        9 => "nine",
        8 => "eight",
        7 => "seven",
        6 => "six",
        5 => "five",
        4 => "four",
        3 => "three",
        2 => "two",
        1 => "one"
      }
    str = ""
    numbers_to_name.each do |num, name|
      if int == 0
        return str
      elsif int.to_s.length == 1 && int/num > 0
        return str + "#{name}"      
      elsif int < 100 && int/num > 0
        return str + "#{name}" if int%num == 0
        return str + "#{name} " + in_words(int%num)
      elsif int/num > 0
        return str + in_words(int/num) + " #{name} " + in_words(int%num)
      end
    end
  end
  
  def timeInWords(h, m)
      hour_hash = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve"]
      if m > 30
          bridge = "to"
          hour = hour_hash[h+1]
      else
          bridge = "past"
          hour = hour_hash[h]
      end
      case m
      when 0
          return "#{hour} o' clock"
      when 15
          return "quarter #{bridge} #{hour}"
        when 45
            return "quarter #{bridge} #{hour}"
      when 30
          return "half #{bridge} #{hour}"
      when 1
          return "one minute #{bridge} #{hour}"
      else
          return m>30 ? "#{in_words(60-m)} minutes #{bridge} #{hour}" : "#{in_words(m)} minutes #{bridge} #{hour}"
      end
  end

  p timeInWords(1,1)