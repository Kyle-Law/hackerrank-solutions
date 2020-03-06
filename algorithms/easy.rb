#Answers for hackerrank Algorithms questions (Easy version) in Ruby

# def birthday(s, d, m)
#     count =0
#     for i in 0..s.length-1
#         p s[i,m]
#         count+= 1 if s[i,m].sum == d
#     end
#     count
# end

# def birthday(s, d, m)
#     count = 0
#     unless s.length == 1
#         for i in 0..s.length-1
#             sum = 0
#             if i != s.length-1       
#                 s[i..i+m-1].each do |item|
#                     sum += item              
#                 end
#                 p s[i..i+m-1]
#             end
#             count += 1 if sum == d
#         end
#         count
#     else
#         count = 1 if s[0] == d
#     end 
# end

# # p 2%9
# #my faulty solution
# def saveThePrisoner(n, m, s)
#     last_round = m>n ? m%n : m
#     last_round+s-1
# end

# #answer
# def saveThePrisoner(n, m, s)
#     prisoner_id = (m % n + s - 1) % n 
#     prisoner_id.zero? ? n : prisoner_id
# end

# def saveThePrisoner(n, m, s)
#     ((m+s-2)%n)+1
# end

#(m+s-2)%n+1
# Firstly, last prisoner = (m%n(~my last_round) + (s-1))%n
#if prisoner_id == 0, it means the n == last_round+s-1
#if prisoner_id != 0, it means last_round+s-1 > n (eg. 2 sweets, 7 prisoners, start with 3, 2%7 = 2,+3-1 =4; 4<7...;

# def dayOfProgrammer(year)
#     if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 
#         return "12.09.#{year}"
#     else
#         return "13.09.#{year}"
#     end
# end

# p dayOfProgrammer(1800)
# p 1800 % 4 == 0 && 1800 % 100 != 0
# p 1800 % 100
# p 1800 % 400
# p 1918 % 4
# [4,8,12,16].each do |i|
#     [16,32,96].all? {|x| puts (x % i==0) }
# end

# def find_factors(a_array, b_first)
#     factors = []
#     choices = (2..b_first).to_a
#     choices.each do |i|
#         factors << i if a_array.all? {|x| i % x == 0}
#     end
#     factors
# end

# def common_factors(factors_list, b_array)
#     factors_count=0
#     factors_list.each do |i|
#         factors_count+=1 if b_array.all? {|x| x % i == 0}
#     end
#     factors_count
# end

def getTotalX(a, b)
    # Write your code here
    def find_factors(a_array, b_first)
        factors = []
        choices = (1..b_first).to_a
        choices.each do |i|
            factors << i if a_array.all? {|x| i % x == 0}
        end
        factors
    end

    def common_factors_count(factors_list, b_array)
        factors_count=0
        factors_list.each do |i|
            factors_count+=1 if b_array.all? {|x| x % i == 0}
        end
        factors_count
    end
    factors_list = find_factors(a,b[0])
    common_factors_count(factors_list, b)
end

#.each .each_with_index .all? .any? .none? select .map .inject 

# p getTotalX([1], [100])
# a1 = [2,4] b1 = [16,32,96] => 3 
# [4,8,12,16]

# a = [2,3] b = [15,18,21,24,27,30] => ?
# [2,3] => [6,12]
#[6,12] b = [15,17,21,24,27,30] => 1

def get_factors(a,b_min)
    arr = []
    for i in 1..b_min
        arr << i if a.all? {|x| i % x == 0}
    end
    arr
end

def count_factors(factor_list, b_array)
    count=0
    for i in b_array
        count+=1 if factor_list.all? {|x| i % x == 0}
    end
    count
end

# p get_factors([2,3],15)
# p count_factors([6,12],[15,18,21,24,27,30])
#Learned: master every enumerables like .each , .each_with_index, ... and select the most optimal enumerable for that algorithm. Almost all algorithm requires Ruby users to use one of the enumerables. 

def compareTriplets(a, b)
    arr = [0,0]
    a.each_with_index {|x,y| arr[0]+=1 if x>b[y]}
    a.each_with_index {|x,y| arr[1]+=1 if x<b[y]}
    arr
end

# p compareTriplets([1,2,1],[2,3,2])
# not `action` if arr.each_with_index { |x,y| `condition`}, but arr.each_with_index {|x,y| `action if condition`} ...

def diagonalDifference(arr)
    # Write your code here
    #sum_p = figure primary_array.sum
    #sum_s = figure secondary_array.sum
    def sum_p(arr_2d)
        #find primary_array
        primary_array = []
        arr_2d.each_with_index do |arr_1d,arr_num|
            primary_array << arr_1d[arr_num]
        end
        primary_array.sum
    end

    def sum_s(arr_2d)
        #find secondary_array
        secondary_array = []
        arr_2d.each_with_index do |arr_1d,arr_num|
            secondary_array << arr_1d[arr_1d.length - arr_num - 1]
        end
        secondary_array.sum
    end
    #return (sum_p - sum_s).abs
    (sum_p(arr) - sum_s(arr)).abs
end

# Learned: be very careful with the last element when using indexing under a loop, arr[arr.length] will return nil, which may cause trouble ahead as Nil class doesn't support many methods and may lead to error like `nil can't be coerced into Integer (TypeError)`

# p diagonalDifference([[1,2,3],[4,5,6],[7,8,9]])
def plusMinus(arr)
    count_positive = 0
    count_negative = 0
    count_zero = 0
    arr.each do |i|
        count_positive +=1 if i>0
        count_negative += 1 if i < 0
        count_zero += 1 if i == 0
    end
    # puts count_positive / arr.length
    # puts count_negative / arr.length
    # puts count_zero / arr.length
    puts count_positive.to_f / arr.length
    puts count_negative.to_f / arr.length
    puts count_zero.to_f / arr.length
end

# arr_plus_minus = [-4,3,-9,0,4,1]
# plusMinus(arr_plus_minus)

#Learned: 3 / 6 == 0 , 3.to_f / 6 == 0.5

def staircase(n)
    for i in 1..n
        puts " "*(n-i) + "#"*i
    end
end
#Learned: consider the spaces before #

def miniMaxSum(arr)
    min_max = [Float::INFINITY,0]
    for i in arr
        min_max[1] = arr.sum - i if arr.sum - i > min_max[1]
        min_max[0] = arr.sum - i if arr.sum - i < min_max[0]
    end
    print "#{min_max[0]} #{min_max[1]}"
    #why not print "#{arr.min} #{arr.max}" , solve it in 1 line...?
end

# miniMaxSum([256741038, 623958417, 467905213, 714532089, 938071625])
#Learned: Use Float::INFINITY to represent an infinitely large number

def gradingStudents(grades)
    # Write your code here
    result=[]
    def round_5(i)
        if i.to_s[-1] == "9" || i.to_s[-1] == "4"
            i+=1
        elsif i.to_s[-1] == "8" || i.to_s[-1] == "3"
            i+=2
        end
        i
    end

    grades.each do |i|
        result.append(i<38 ? i : round_5(i)) 
    end
    result
end

#Key takeaway: rounding 3/4/8/9 by checking to_s[-1] 

def kangaroo(x1, v1, x2, v2)
    return "NO" if (v2>v1 && x2>x1) || (x1>x2 && v1>v2)
    if (x2>x1 && v1>v2)
        while x1 != x2
            x1+=v1
            x2+=v2
            break if x1>x2
        end
    end
    if (x2<x1 && v1<v2)
        while x1 != x2
            x1+=v1
            x2+=v2
            break if x2>x1
        end
    end
    return x1 == x2 ? "YES" : "NO"
end

#key takeaway: The kangaroo might surpass without meeting each other (break the loop)

def divisibleSumPairs(n, k, ar)
    ar.combination(2).to_a.select{|i| i.sum % k ==0}.count
end

#Key takeaway: Phew, best solution ever

def migratoryBirds(arr)
    max = 1
    [1,2,3,4,5].each do |i|
        max = i if arr.count(i) > arr.count(max)
    end
    max
end

#Key takeaway
#Not `max = i if arr.count(i) > max` because max is the number, count(i) is likely to be larger than the number 
# [1,2,3,4,5] because there's only 5 types

def sockMerchant(n, ar)
    pair = 0
    i = 0
    sorted_ar = ar.sort
    while i < ar.length
        if sorted_ar[i+1] == sorted_ar[i]
            pair+=1
            i+=2
        else
            i += 1
        end
    end
    pair
end
# p sockMerchant(9, [1,1,2,2,2,2,2,5,5])

# Key takeaway
# Using while / for loops if you want to control the index, also using .sort to modify your array input before starting. 
#Array.delete_at(Array.index(value)) to remove the first occurance of a repeating value, but it's not needed in this project.

def pageCount(n, p)
    flip = 0
    pages_arr = (2..n).to_a
    return 0 if p == 1 || p == n
    if n.even?
        min_distance = [(2..p).size,(p...n).size].min
        flip = (min_distance.to_f/2).ceil 
    else
        return 0 if p == n-1
        min_distance = [pages_arr[2..p].size,pages_arr[p..n].size].min
        flip = (min_distance.to_f/2).ceil
        return 0 if p == n-1
    end
    flip
end
# Key takeaway: this is insane. I passed without know what's going on.
# test n=6,p=5 failed on the first method. 
# From above, we could see patterns like finding flip using distance..

#Example answer (but failed on pageCount(6,5)):
# if p == 1 || p == n
#     puts 0
# else
#     b = p / 2 (pages turn from page 1 is always p/2)
#     e = (n - p) / 2 (pages turn from the end is (n-p)/2, if n is odd... (n-p+1)/2 if n is even...)
#     puts b < e ? b : e
# end

#Extremely simple solution in Python:
#print min(p/2,n/2-p/2)
# def pageCount(n, p) **but failed on pageCount(6,5)
#     [p/2,(n-p)/2].min
# end
#It was solved by others like piece of cake...

def countingValleys(n, s)
    count = 0
    progress = 0
    arr = s.split('')
    for step in arr
        progress +=1 if step == 'U'
        progress -=1 if step == 'D'
        count += 1 if progress == 0 && step == 'U'
    end
    count
end

#Key takeaway: use .split('') to turn String into Array

def getMoneySpent(keyboards, drives, b)
    return -1 if keyboards.min + drives.min > b
    budget_arr = []
    for x in keyboards
        for y in drives
            budget_arr << x+y if x+y <= b
        end
    end
    budget_arr.max
end

#Key takeaway: Are there better solution that using double loop? 

def catAndMouse(x, y, z)
    return 'Mouse C' if (x-z).abs == (y-z).abs
    (x-z).abs > (y-z).abs ? 'Cat B' : 'Cat A'
end

#Key takeaway: use .abs to find distance between 2 objects
 
#pickingNumbers Solution 1
def max_occurences(arr)
    arr.max_by{|n| arr.count(n)}
end

def pickingNumbers(a)
    # Write your code here
    def max_occurences(arr) #find the integer that occured the most
        freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
        arr.max_by { |v| freq[v] }
    end
    mode = max_occurences(a)
    choice_1 = a.select{|n| n==mode || n==mode - 1}.length
    choice_2 = a.select{|n| n==mode || n==mode + 1}.length
    choice_1 > choice_2 ? choice_1 : choice_2
end

#pickingNumbers solution 2
arrr = [1,1,2,2,2,3,3,4,4,4,5,5,5]

def pickingNumbers(a)
    max = 0
    a.uniq.each do |uniq_n| #uniq_n = [1,2,3,4,5]
        subset = a.select { |n| n == uniq_n || n == uniq_n + 1 }
        max = subset.count if subset.count > max
    end
    max
end

#Key takeaway: super combo, in my solution, I used #uniq to return an array of uniq number, then #select to select an array subset that contains n & n+1, then filter with #count.
#Slightly tough. Can't solve it at the first sight. Have to consider when there are equal number of occurences of a same integer (i.e [1,1,2,2,2,3,3,4,4,4] where 2 & 4 have both occured 3 times.) The max_occurences helper method could only find the first maximum occurences.

def angryProfessor(k, a)
    a.count{|i| i<=0} >= k ? 'NO' : 'YES'
end

#Key takeaway: #count can accept block

def beautifulDays(i, j, k)
    range = (i..j).to_a
    count = 0
    def reverse(n)
        n.to_s.reverse.to_i
    end
    range.each {|n| count += 1 if (n - reverse(n)).abs % k == 0}
    count
end

#Key takeaway: To reverse an integer (16 to 61), convert it to String with #to_s, use #reverse to reverse the string, then convert back to integer with #to_i

# p [1,2,3].rotate(2)

def circularArrayRotation(a, k, queries)
    ans = []
    rotated = a.rotate(-k)
    queries.each {|i| ans << rotated[i]}
    ans
end
#The answer is in array form rather than puts form, lmao.

#Hackerearth quiz: get prime numbers up to a given integer
def is_prime(n)
    range = (2..n-1).to_a
    range.all? {|i| n % i !=0}
end

def get_prime(num)
    ranges = (2..num.to_i-1).to_a
    for x in ranges
        print "#{x} " if is_prime(x)
    end
end

#Key takeaway: prime number, the classic question for DS&A

def permutationEquation(p)
    arr = []
    p.each_with_index do |e, i|
        arr << p.index(p.index(i+1)+1)+1
    end
    arr
end

# p permutationEquation([4,3,5,1,2])

#Key Takeaway: I failed this. This is the first time #index method is used heavily.
#Explanation:
def simple_permutation(array)
    arr = []
    p.each_with_index do |e, i| #the value isn't used right? #each_index better
        arr << p.index(i+1)+1 #find the index of 0+1
    end
    arr
end
# Additional takeaway: sometimes, instead of puts, Hackerrank wants answer in array.

def jumpingOnClouds(c, k)
    e = 100
    i = 0
    n = c.length
    loop do
        e-=2 if c[i%n]==1
        i+=k
        e-=1
        break if i%n == 0
    end
    e
end

#Key takeaway: use i%n to determine cloud number, stop if it lands on cloud 0 (continue jumping if it doesn't land on cloud 0) Use `loop do` if you want infinite loop until a certain condition is met.

#try 1
# def appendAndDelete(s, t, k)
#     def differences_checker(a1,a2)
#         differences = []
#         a1.each_with_index do |element,index|
#             if element != a2[index]
#                 differences += a1[index..-1]
#                 differences += a2[index..-1]
#                 return differences
#             end
#         end
#         differences
#     end
#    s_arr = s.split('')
#    t_arr = t.split('')
#    differences = differences_checker(s_arr,t_arr)
#    differences.length <= k? 'Yes' : 'No'
# end

# p differences_checker(%w[q w e r a s d f], %w[q w e r b s d f])

def appendAndDelete(s,t,k)
    s_arr = s.split('')
    t_arr = t.split('')
    longer_arr = s_arr.length>t_arr.length ? s_arr : t_arr
    shorter_arr = s_arr.length>t_arr.length ? t_arr : s_arr
    differences = []
    longer_arr.each_with_index do |element,index|
        if element != shorter_arr[index]
            differences += longer_arr[index..-1]
            differences += shorter_arr[index..-1]
            break
        end
    end
    return 'Yes' if differences.length == k
    return 'Yes' if differences.length == 0
    return 'No' if differences.length > k
    if differences.length < k
        return 'Yes' if k >= s_arr.length + t_arr.length
        return (k-differences.length).even? ? 'Yes' : 'No'
    end
end

# p appendAndDelete('hackerrank','hackerhappy',9)

#eg. qwerasdf & qwerbsdf, require 8 steps
# Example 1. y, yu, 2 => 'No'
# Example 2. abcd, abcdert, 10 => 'No'.
# Example 3, abcdef,fedbca, 15 => 'Yes'
# eg. zzzz & zzzzzz, 4
# Solved!
# Key takeaway: Similarly, use each_with_index for comparing same index between 2 array. differences.length < k is slightly tricky.

def squares(a, b)
    range = (a..b).to_a
    range.select{|i| (i**0.5).to_i == i**0.5 }.length
end

# p squares(3,9)
# Sherlock and Square can't be solved because of runtime error
# Key Takeaway: Couldn't solve. Always got runtime error..

def libraryFine(d1, m1, y1, d2, m2, y2)
    # return 0 if y1<y2
    return 10000*(y1-y2) if y1>y2
    return 500*(m1-m2) if m1>m2 && y1==y2
    return 15*(d1-d2) if d1>d2 &&m1==m2 && y1==y2
    0
end

#Key Takeaway: yeah quite easy..? 
def cutTheSticks(arr)
    cut=[]
    loop do
        cut << arr.length
        arr = arr.map {|i| i- arr.min}
        arr.delete(0)
        break if arr.length == 0
    end
    cut
end

# p cutTheSticks([5,4,4,2,2,8])
# Key takeaway: Use `loop do` if you have specific condition to break

def repeatedString(s, n)
    remainder = n % s.length
    (n/(s.length))*(s.count('a')) + s[0,remainder].count('a')
end
#Key takeaway: a mathematical question. Try to find the mathematical relationship to avoid putting to much stress on memory and complexity.

def jumpingOnClouds(c)
    i = 0
    jump = 0
    while i < c.length-1
        c[i+2] == 0 ? i+=2 : i+=1
        jump +=1
    end
    jump
end

#Key takeaway: When playing game like this, use while loop so that you could control the integer (player position)

def equalizeArray(arr)
    def max_occurences(arr) #find the integer that occured the most
        freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
        arr.max_by { |v| freq[v] }
    end
    preserved = max_occurences(arr)
    count_mode = arr.count(preserved)
    arr.length - count_mode
end

#Key takeaway: max_occurences helper method is pretty helpful when solving this algo.


# Input format : ["10101", "11100", "11010", "00101"]
# p acmTeam(["10101", "11100", "11010", "00101"])

#Problem: time limit. Find the mathematical relationship. 
def binary_combine(s1,s2)
    ar1 = s1.split('')
    ar2 = s2.split('')
    arr = []
    ar1.each_with_index do |v,i|
        arr << 1 if v == "1" || ar2[i] == "1" 
        arr << 0 if v == "0" && ar2[i] == "0"
    end
    arr
end

def acmTeam(topic)
    def binary_combine(s1,s2)
        ar1 = s1.split('')
        ar2 = s2.split('')
        arr = []
        ar1.each_with_index do |v,i|
            arr << 1 if v == "1" || ar2[i] == "1" 
            arr << 0 if v == "0" && ar2[i] == "0"
        end
        arr
    end
    combos = topic.combination(2).to_a
    # p combos
    results = combos.map{|combo| binary_combine(combo[0],combo[1])}
    max = 0 
    results.each do |i|
        max = i.count(1) if i.count(1)>max
    end
    ways = results.count {|i| i.count(1)==max}
    [max,ways]
end

#Key takeaways: Solved but runtime error. Is there any mathematical relationship. 

def camelcase(s)
    (s.split /(?=[A-Z])/).length
end

#Key takeaway: here is when Regex comes handy. /(?=[A-Z]/ split camelCase into array of words.

def taumBday(b, w, bc, wc, z)
    # Write your code here
    [b*bc+w*wc,(b+w)*bc+z*w,(b+w)*wc+z*b].min
end

#When finding minimum value, instead of using if-else, may convert all mathematical expression in an array and find the min.

def kaprekarNumbers(p, q)
    answer = []
    range = (p..q).to_a
    squares = range.map{|i| i**2}
    ar = squares.map{|square| square.to_s.split('')}
    add = ar.map{|a| a[0,(a.size)/2].join.to_i + a[(a.size)/2..-1].join.to_i }
    range.each_with_index do |v,i|
        answer << v if v==add[i]
    end
    answer.empty? ? print("INVALID RANGE") : answer.each{|i| print "#{i} "}
end

# kaprekarNumbers(1,100)

# Key takeaway: Be careful with the output format; #join is the opposite of split(joining array into string); 
# Used methods: #map, #split, #size, #each_with_index, #to_i

def beautifulTriplets(d, arr)
    triplets = arr.sort.combination(3).to_a
    triplets = triplets.select{|triplet| triplet[1]-triplet[0]==d && triplet[2]-triplet[1]==d}
    triplets.length
end

#1 try KO but runtime error. Find mathematical relationship I guess? 

def minimumDistances(a)
    distances = []
    duplicates = a.select{|i| a.count(i)>1}.uniq
    duplicates.each{|i| distances << a.rindex(i)-a.index(i)}
    distances.empty? ? -1 : distances.min
end

# p minimumDistances([7,1,3,4,1,7])
# Key takeaway `duplicates = a-a.uniq` won't work. First time utilize #rindex to find out the last index of the item. 
# Used methods: #select, #count, #uniq,  #rindex, #index, #empty?, #min

def howManyGames(p, d, m, s)
    # Return the number of games you can buy
    answer = []
    current_price = p
    loop do
        current_price < m ? answer << m : answer << current_price
        current_price -= d
        break if answer.sum > s
    end
    answer.size - 1
end

# howManyGames(20,3,6,85)
# Key Takeaway: Be careful using ternary operator. array << condition ? true : false doesn't work  => condition ? array << true : array << false

def chocolateFeast(n, c, m)
    wrappers,chocolates = [n/c , n/c]
    loop do
        chocolates += wrappers/m
        wrappers = wrappers/m + wrappers % m
        break if wrappers/m == 0
    end
    chocolates
end

# Key takeaway: a,b = x,y to assign multiple variable at a time. (a,b = [x,y] works as well.) ; #pop is a destructive method (modify the array)

# Service Lane can't be solved because of missing inputs (array of width). Given n & entry-exit 2d-array only.

def fairRations(b)
    count = 0
    b.each_with_index do |v,i|
        break if i == b.length-1
        if v.odd?
            b[i] += 1
            b[i+1] += 1
            count += 2
        end
    end
    b.all? {|i| i.even?} ? count : 'NO'
end
# p fairRations([2,3,4,5,6])

#Key takeaway: 1st, In each_with_index {|v,i|}, you can't modify the element with v, must use array[i]= xxx to modify it; 2nd, #all?(:even?) doesn't work; 3rd, it could be solved using i+1 / i-1, not necessary to utilize both.

def flatlandSpaceStations(n, c)
    arr = Array.new(n)
    c.each{|i| arr[i] = 0}
    arr.each_index do |i|
        if arr[i] != 0
            distance = []
            c.each{|j| distance << (i-j).abs}
            arr[i] = distance.min
        end
    end
    arr.max
end
# 19/20 test cases solved. The last one couldn't be solved due to timeout. Are there any possibility to refactor it or if there's any mathematical relationship?

#2nd try: 
def flatlandSpaceStations(n, c)
    arr = Array.new(n)
    max = 0
    arr.each_index do |i|
        distance = []
        c.each{|j| distance << (i-j).abs}
        max = distance.min if distance.min>max
    end
    max
end
#Same problem. n(2) complexity can't pass the time limit.

#3rd try: 
def flatlandSpaceStations(n, c)
    arr = Array.new(n,1)
    c.each{|i| arr[i] = 0}
    arr.each_index do |i|
        if arr[i] != 0 || arr[i] != 1
            distance = []
            c.each{|j| distance << (i-j).abs}
            arr[i] = distance.min
        end
    end
    arr.max
end

# Same time limit problem.


# p Array.new(6)

# p [2].all? {|i| i.even?}

# def workbook_helper(limit, n) #problem per page, problems per chapter
#     arr = Array.new(n/limit+1,Array.new())
#     range = (1..n).to_a
#     i = 0
#     range.each{|i| arr}
#     end
#     arr
# end

# multi_array[1] = 1
# p multi_array
# p Array.new(5,Array.new(4,0)) #=> [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
# p Array.new(5,1)
# p workbook_helper(3,10) #=>[[1,2,3],[4,5,6],[7,8,9],[10]]
# p Array.new(n/limit+1,Array.new())
