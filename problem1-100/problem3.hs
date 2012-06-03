factors::Integer->[Integer]
factors n = [ x | x <-[1..n], (mod n x) == 0 ]
prime::Integer->Bool
prime n = factors n ==[1,n]
primeFactors::Integer->[Integer]
primeFactors n =  [ x | x <-[1..n], odd x && (mod n x) == 0 && prime x]