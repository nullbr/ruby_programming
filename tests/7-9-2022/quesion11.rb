def numbers_to_letters(string)
  string.split('+').map { |word| word.split.map { |char| (char.to_i + 64).chr }.join }.join(' ')
end

p numbers_to_letters('20 5 19 20+4 15 13 5')
