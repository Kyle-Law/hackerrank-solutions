=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
    attr_accessor :scores

    def initialize(scores)
        @scores = scores
    end

    def latest
        @scores[-1]
    end

    def personal_best
        @scores.max
    end

    def personal_top_three
        @scores.sort.reverse[0,3]
    end

    def latest_is_personal_best?
        @scores[-1] == @scores.max
    end
end
