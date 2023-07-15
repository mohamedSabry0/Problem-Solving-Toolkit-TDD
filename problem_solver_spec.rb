require './problem_solver'

RSpec.describe ProblemSolver do
  subject(:solver) { ProblemSolver.new }

  describe '#new' do
    it 'creates a new ProblemSolver object' do
      expect(solver).to be_an_instance_of(ProblemSolver)
    end
  end

  describe '#factorial' do
    it 'returns 1 when the input is 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'outputs the correct factorial for a positive integer' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'alerts an ArgumentError for negative input' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Input must be a non-negative integer')
    end
  end

  describe '#reverse' do
    it 'outputs the reversed word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'outputs "fizz" when the number is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'outputs "buzz" when the number is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'outputs "fizzbuzz" when the number is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'outputs the number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(13)).to eq('13')
    end
  end
end
