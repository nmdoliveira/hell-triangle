require_relative "hell_triangle.rb"

RSpec.describe "maximum_total" do
  data = {
      [[]] => nil,
      [[1]] => 1,
      [[1], [2, 3]] => 4,
      [[1], [1, 5], [10, 1, 1]] => 12,
      [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]] => 26
    }

  data.each do |triangle, result|
    it { expect(maximum_total(triangle)).to eq result }
  end
end
