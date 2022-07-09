# param [Float] r
# param [Float] a
#
# @return [Array[Float]]
#   An array of two elements containing the area inside, and area outside the circle, in that order.
def areas(r, a)
  pi = Math::PI

  area_of_circle = pi * (r**2)

  area_of_sector = area_of_circle * (a / 360)

  area_of_triangle = 1 / 2 * (r**2) * Math.asin((a) / 180)

  "[#{(area_of_sector - area_of_triangle)}[#{area_of_circle}]]"
end

puts areas(10.0, 90.0)
