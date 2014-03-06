require 'prime'
require 'pp'

class SumOfPrimes

  def sum_primes(upper_bound)

    natural_numbers = Array.new(upper_bound, true)

    (2..Math.sqrt(upper_bound)).each do |index|
      if natural_numbers[index] == true
        multiplier = 0
        current_multiple = index*index
        while current_multiple <= upper_bound do
          natural_numbers[current_multiple] = false
          multiplier += 1
          current_multiple = (index*index) + (multiplier*index)
        end
      end
    end

    summation = 0
    natural_numbers.each_with_index { |value, index| summation += index if value == true }
    summation - 1
  end

  #   sum = 0
  #    (2..upper_bound).each { |num| sum += num; pp num if Prime.prime?(num) }
  #   sum
  # end


  # def is_prime?(number)
  #   if number == 2 || number == 3
  #     return true
  #   end

  #   (2..number/2).each do |num|
  #     if number % num == 0
  #       return false
  #     end
  #   end
  #   return true
  # end


  # def sum_primes(upper_bound)
  #   sum = []
  #   (2..upper_bound-1).each do |num|
  #     if is_prime?(num)
  #       sum << num
  #       pp num
  #     end
  #   end
  #   sum_adder.inject(:+)
  # end

end


