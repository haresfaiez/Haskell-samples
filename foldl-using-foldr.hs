myFoldl :: (a -> b -> a) -> a -> [b] -> a

myFoldl operation identity input
  = (foldr step id input) identity
    where step accumilationLeft accumilationRight each = accumilationRight (operation each accumilationLeft)
