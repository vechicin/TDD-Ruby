class Solver
  def factorial(number)
    raise 'Number must be >= 0' if number < 0

    raise 'Number must be an integer' unless number.is_a? Integer

    return 1 if number == 0

    return number * factorial(number - 1)
  end

  def reverse(word)
    raise 'Word must be a string' unless word.is_a? String
    return word.reverse!
  end

  def fizzbuzz(number); end
end
