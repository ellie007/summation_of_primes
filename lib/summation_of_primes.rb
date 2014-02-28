class SumOfPrimes

  def filter_primes_from_sequence(upper_bound)

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

  # def sum_of_primes_from_2_to(upto)
  #   sum_adder = []
  #   (2..upto-1).each do |num|
  #     if is_prime?(num)
  #       sum_adder << num
  #     end
  #   end
  #   sum_adder.inject(:+)
  # end

end


