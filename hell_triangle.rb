def maximum_total(triangle)
  triangle.reverse.reduce do |bottom, top|
    top.zip(bottom.each_cons(2)).map { |(top, bottom)| top + bottom.max }
  end.first
end
