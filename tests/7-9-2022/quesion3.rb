# @param [String] permissionString
#   UNIX permission string
# @return [Integer]
#   Numerical representation of given permissions
def symbolic_to_octal(permission_string)
  octal_conversion = { 'r' => 4, 'w' => 2, 'x' => 1, '-' => 0 }
  permission_string = permission_string.split('')
  return unless permission_string.all? { |char| octal_conversion.has_key?(char) }

  sum = 0
  count = 0
  numbers = []
  permission_string.each do |char|
    sum += octal_conversion[char]
    if count == 2
      numbers << sum
      sum = 0
    end
    count = count == 2 ? 0 : count += 1
  end
  numbers.join.to_i
end

puts symbolic_to_octal('rwxr-x-w-')
# Should yield 752
