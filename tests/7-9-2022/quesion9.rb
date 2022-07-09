# param [String] to_search
#   The text to search for
# param [read_io] stream
#   The readable pipe endpoint
#
# return [int] The number of lines that contain to_search
def get_occurrence_count(to_search, stream)
  count = 0
  stream.readlines.each do |line|
    count += 1 if line.include?(to_search)
  end

  count
end

r, w = IO.pipe
w.puts "Hey! How are you?\nI am good, how about you?\nI am good too."
w.close
print(get_occurrence_count('good', r))
