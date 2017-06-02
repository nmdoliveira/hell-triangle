require_relative "hell_triangle.rb"

RSpec.describe HellTriangle do
  describe "#max_total" do
    examples = {
      [[]] => 0,
      [[1]] => 1,
      [[1], [2, 3]] => 4,
      [[1], [1, 5], [10, 1, 1]] => 12,
      [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]] => 26
    }

    examples.each do |rows, result|
      it "#{rows} => #{result}" do
        expect(described_class.new(rows).max_total).to eq result
      end
    end

    it "1_000 line array => 500_500 (and does not take so long)" do
      big_array = (1..1_000).map { |i| (1..i).to_a }
      expect(described_class.new(big_array).max_total).to eq 500_500
    end
  end
end
