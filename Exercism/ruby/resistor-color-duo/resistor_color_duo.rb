=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

# Black - Brown - Red - Orange - Yellow - Green - Blue - Violet - Grey - White
class ResistorColorDuo
    def self.value(arr)
        table = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"]
        ans = (table.index(arr[0]).to_s+table.index(arr[1]).to_s).to_i
    end
end

# p ResistorColorDuo.value(["yellow", "violet"])
# p ResistorColorDuo.value(["brown", "black"])
# p ResistorColorDuo.value(["blue", "grey"])
# p ResistorColorDuo.value(["orange", "orange"])
# p ResistorColorDuo.value(["green", "brown", "orange"])