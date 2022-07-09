def find_all_hobbyists(hobby, hobbies)
  names = []
  hobbies.each do |name, hobbies_per_name|
    names << name if hobbies_per_name.any? { |h| h == hobby }
  end
  names
end

hobbies = {
  'Steve' => %w[Fashion Piano Reading],
  'Patty' => %w[Drama Magic Pets],
  'Chad' => %w[Puzzles Pets Yoga]
}

puts find_all_hobbyists('Yoga', hobbies)

