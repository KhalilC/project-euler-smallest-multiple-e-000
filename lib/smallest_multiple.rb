# Implement your procedural solution here!

def divisible?(original_number, current_number)
  (2...original_number).each do |multiple|
    return false unless current_number % multiple == 0
  end
  return true
end

def smallest_multiple(input)
  counter = input
  loop do
    divisible?(input, counter)
    counter += input unless divisible?(input, counter)
    break if divisible?(input, counter)
  end
  counter
end
