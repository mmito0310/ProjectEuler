isPalindrome::Integer->Bool
isPalindrome n = (show n) == reverse(show n) 
isTTmul::Integer->Bool
isTTmul n = (length [ x | x <- [100..999], (mod n x) == 0 && (div n x) >=100 && (div n x) < 1000]) > 0
p4::[Integer]
p4 = [ x | x <-[10000..999999], (isPalindrome x) && isTTmul x ]
