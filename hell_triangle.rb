class HellTriangle
  attr_reader :rows

  def initialize(rows)
    @rows = rows
  end

  def max_total
    rows.reverse.reduce { |bottom, top| max_totals(top, bottom) }.first || 0
  end

  private

  ##
  #
  # Reduces two rows to one, where each value is the maximum total of the
  # sub-triangles contained in the two rows.
  #
  ##
  def max_totals(top, bottom)
    top.zip(bottom.each_cons(2)).map { |top, bottom| top + bottom.max }
  end
end
