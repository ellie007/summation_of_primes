require 'pp'

boolean_array = [true, true, true, true, false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, true, false]

summation = 0


boolean_array.each_with_index { |index, value| pp "index: #{index}"; pp "value: #{value}" }

boolean_array.each_with_index { |value, index| pp "index: #{index}"; pp "value: #{value}" }

boolean_array.each_with_index { |index, value| summation += index if value == true; "puts here" }

boolean_array.each_with_index { |value, index| summation += index if value == true; "puts there" }


puts summation

