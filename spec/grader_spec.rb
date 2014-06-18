require 'grader'

describe Grader do

  let(:grader) { Grader.new }

  describe 'translation' do
    it 'can find upward trend in 2 entries' do
      input = [6, 7]

      expected = [:up]

      expect(grader.translate(input)).to eq expected
    end

    it 'can find even trend in 2 entries' do
      input = [6, 6]

      expected = [:even]

      expect(grader.translate(input)).to eq expected
    end

    it 'can find down trend in 2 entries' do
      input = [6, 5]

      expected = [:down]

      expect(grader.translate(input)).to eq expected
    end

    it 'can find  trend in many entries' do
      input = [6, 3, 5, 4, 3, 4, 4, 5]

      expected = [:down, :up, :down, :down, :up, :even, :up]

      expect(grader.translate(input)).to eq expected
    end
  end

  describe 'trends' do
    it 'can determine downward trend with 2 entries' do
      input = [:down, :down]

      expected = "not in decline"

      expect(grader.trend(input)).to eq expected
    end

    it 'can determine downards trend with three entries' do
      input = [:down, :down, :down]

      expected = "in decline"

      expect(grader.trend(input)).to eq expected
    end

    it "can determine trend for an array that does not end in :down" do
      input = [:down, :down, :down, :up]

      expected = "not in decline"

      expect(grader.trend(input)).to eq expected
    end

    it "can determine trend for a long array" do
      input = [:even, :even, :down, :even, :down, :even, :even, :even, :down]

      expected = "in decline"

      expect(grader.trend(input)).to eq expected
    end
  end
end