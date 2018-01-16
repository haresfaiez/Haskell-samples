myDrop n xs
  = if n <= 0 || null xs
    then xs
    else myDrop (n - 1) (tail xs)

myGuarDrop _ [] = [] 
myGuarDrop n xs
  | n < 0     = xs
  | otherwise = myGuarDrop (n - 1) (tail xs)
