#!/usr/bin/env ruby
require 'bigdecimal/math'

#set gross to a gross (a dozen dozen) or set it form a CLI input.
gross = 12*12 
gross = ARGV[0].to_i unless ARGV[0].nil?
#set gross_pi to be accurate to gross decimal places
gross_pi = BigMath.PI(gross)
#truncate gross_pi to gross decimal places
gross_pi = gross_pi.truncate(gross)
#set gross_pi to a string in floating point representation
gross_pi = gross_pi.to_s('F')
#print gross_pi
puts "Gross Pi: #{gross_pi}"

#Drop everything to the left of the decimal, including the decimal
right_digits = gross_pi.split('.', 2)[1]
#set right_digits to an array of digitst to the right of the decimal.
right_digits = right_digits.chars.map(&:to_i)
#calculate the sum of the digits to the right of the decimal
sum = 0
right_digits.each do |i|
  sum += i
end
puts "The Sum of the #{gross} digits to the right of the decimal in Pi is: #{sum}"
