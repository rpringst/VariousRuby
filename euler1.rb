###############################
# Project Euler Problem 1	  #
# Solution by Robert Ringstad #
# 20 August 2015 S1724 E1742  #
###############################

x = (1..999).to_a # Make an array of 1 to 999

y = [] # Make an empty array to hold the good values

x.each do |element|
# Checks if element is divisible by 3 or 5 implying it is some multiple of either
  if (element % 3 == 0) || (element % 5 == 0) then
    y.push(element) # Tack the good values on to the empty array
  end
end

s = 0 # sum

y.each do |element|
  s += element
end

puts s
