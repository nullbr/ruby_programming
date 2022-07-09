# @param [Array[Range]]
#
# @return [Array[Comparable]]
#   An array of the concatenated Comparable elements
def ranges_to_a(*ranges)
  numbers = []
  ranges.each { |range| range.each { |i| numbers << i } }

  numbers
end

puts ranges_to_a((3..4), (1..3))
