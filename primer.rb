def big_prime(x)
  prime = x
  (1..Math.sqrt(x).to_i).each do |i|
    if prime > i then
      if prime % i == 0
      prime /= i
      end
    end
  end
  prime
end


100.times do
s = Time.new
puts big_prime(600851475143)
puts "elapsed: #{Time.new-s}"

end
