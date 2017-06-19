###############################
# Project Euler Problem 2	    #
# Solution by Robert Ringstad #
# 20 August 2015 S1747 E1759  #
###############################

# first two terms of fib
a = 1
b = 2

# start adding new elements after the first two
i = 2

x = [a,b]
n = x.last # highest number in sequence

while (n < 4_000_000) do
  x[i] = x[i-2] + x[i-1] # current turn equals sum of prev two
  i += 1
  n = x.last
end

puts x # print the sequence

s = 0 # sum

x.each do |element|
# if element of sequence is less than bound and is even
  if element < 4_000_000 && element % 2 == 0 then
    s += element
  end
end

puts s
