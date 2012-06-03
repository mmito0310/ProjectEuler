factors::Integer->[Integer]
factors n = [ x | x <-[1..n], (mod n x) == 0 ]
prime::Integer->Bool
prime n = factors n ==[1,n]
primes::Int->Integer
primes n = [ x | x <-[1..10000000000000], odd x && prime x] !! (n-2)
