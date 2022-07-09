def validate?(username)
  !!username[/\A\w{4,16}\z/] && username.count("_") <= 1 && username[-1] != '_' && username[0].match?(/^[[:alpha:]]+$/)
end

puts validate?('Mike_Standish') # Valid username
puts validate?('Mike Standish') # Invalid username
puts validate?('Mike__Standish') # false
puts validate?('Mike0Standish_') # false
puts validate?('Mike_Standis01h') # true
puts validate?('_MikeStandis01h') # false
puts validate?('1MikeStandis01h') # false
