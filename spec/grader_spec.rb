require 'grader'

describe Grader do

  describe 'translation' do
    it 'can find upward trend in 2 entries' do
      grader = Grader.new

      input = [6,7]

      expected = [:up]

      expect(grader.translate(input)).to eq expected
    end

    it 'can find even trend in 2 entries' do
      grader = Grader.new

      input = [6,6]

      expected = [:even]

      expect(grader.translate(input)).to eq expected
    end

    it 'can find down trend in 2 entries' do
      grader = Grader.new

      input = [6,5]

      expected = [:down]

      expect(grader.translate(input)).to eq expected
    end

    it 'can find  trend in many entries' do
      grader = Grader.new

      input = [6,3,5,4,3,4,4,5]

      expected = [:down,:up,:down,:down,:up,:even,:up]

      expect(grader.translate(input)).to eq expected
    end
  end
end