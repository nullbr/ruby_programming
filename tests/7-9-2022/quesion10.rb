class Greeter
  def initialize(boss)
    @boss = boss
    @entered = []
  end

  def greet
    return if @entered.empty?

    if @entered[-1] == @boss
      "Hello, #{@entered.delete_at(-1)}"
    else
      "Welcome, #{@entered.delete_at(-1)}"
    end
  end

  def enters(*names)
    @entered << names
    @entered.flatten!
  end
end

g = Greeter.new('Chuck')
g.enters('John', 'Chuck')
g.enters('Chuck')
puts g.greet
puts g.greet
puts g.greet
puts g.greet
puts g.greet