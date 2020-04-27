# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    s_arr = []
    t_arr = []
    s.split('').each do |s_char|
        s_char == '#' ? s_arr.pop : s_arr << s_char
    end
    t.split('').each do |t_char|
        t_char == '#' ? t_arr.pop : t_arr << t_char
    end
    s_arr == t_arr
end
ac
'ab#c' 'az#c' # = backspace
true

# Time: O(n)
# Space: O(n)