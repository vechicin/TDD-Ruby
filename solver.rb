class Solver
  def factorial(number)
    raise 'Number must be >= 0' if number.negative?

    raise 'Number must be an integer' unless number.is_a? Integer

    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(word)
    raise 'Word must be a string' unless word.is_a? String

    word.reverse!
  end

  def fizzbuzz(number)
    raise 'Input must be an integer' unless number.is_a? Integer

    string = ''
    string = 'fizz' if (number % 3).zero?
    string += 'buzz' if (number % 5).zero?
    string = number.to_s unless (number % 3).zero? || (number % 5).zero?
    string
  end
end
