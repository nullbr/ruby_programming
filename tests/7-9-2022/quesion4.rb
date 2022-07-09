class Numeric
  def log10
    return if nil?

    Math.log(self, 10)
  end
end

begin
  puts 10.log10
rescue StandardError
  puts 'Undefined method: log10'
end
