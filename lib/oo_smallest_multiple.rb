# Implement your object-oriented solution here!

class SmallestMultiple
  attr_accessor :input
  def initialize(input)
    @input = input
  end

  def divisible?(current_number)
    (2...input).each do |multiple|
      return false unless current_number % multiple == 0
    end
    return true
  end

  def lcm
    counter = input
    loop do
      divisible?(counter)
      counter += input unless divisible?(counter)
      break if divisible?(counter)
    end
    counter
  end

end