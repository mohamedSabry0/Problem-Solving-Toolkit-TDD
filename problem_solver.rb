class ProblemSolver
  def factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' if num.negative?

    return 1 if num.zero?

    factorial(num - 1) * num
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    result = ''
    result += 'fizz' if (num % 3).zero?
    result += 'buzz' if (num % 5).zero?
    result = num.to_s if result.empty?
    result
  end
end
