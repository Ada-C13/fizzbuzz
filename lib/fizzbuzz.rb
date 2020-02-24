def do_fizzbuzz(input)
  raise ArgumentError.new("Input is not an integer") if !input.is_a? Integer

  if (input % 15 == 0)
  return 'FizzBuzz'
  elsif (input % 3 == 0)
    return 'Fizz'
  elsif (input % 5 == 0 )
    return 'Buzz'
  else
    return input
  end
end