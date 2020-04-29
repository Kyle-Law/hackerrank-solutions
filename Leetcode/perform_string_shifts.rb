# @param {String} s
# @param {Integer[][]} shift
# @return {String}
def string_shift(s, shift)
    direction = []
    shift.each do |ar|
        if ar[0] == 0
            direction << ar[1]
        else
            direction << -ar[1]
        end
    end
    s.split('').rotate(direction.sum).join
end

#ultimately we only need a direction to rotate the string.
