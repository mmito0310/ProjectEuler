-- Todo: remove even numbers from x
factors::Integer->[Integer]
factors n = [ x | x <-[1..m], (mod n x) == 0 ]
            where m = floor (sqrt $ fromIntegral n)
prime::Integer->Bool
prime n = (odd n) && (factors n == [1])
primes:: Integer->Integer
primes n = 2 + 3 + sum [ (6*x-1) | x <-[1..((n+1) `div` 6)], prime (6*x-1)] + sum [ (6*x+1) | x <-[1..((n-1) `div` 6)], prime (6*x+1)]
