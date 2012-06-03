isMultiple:: Int-> Int->Bool
isMultiple n m = ((mod n m)==0)
tfFilter::[Int]->[Int]
tfFilter es = [n | n<-es, ((isMultiple n 3)||(isMultiple n 5)), n < (es!!(length es -1)) ]          
sumFilter::[Int]->Int
sumFilter es = sum(tfFilter es)