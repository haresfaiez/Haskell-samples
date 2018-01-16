isLeastThan a b
  = a < b
isGreaterThan a b
  = not (isLeastThan a b)

incrementOrder last next
  | isLeastThan last next = next
  | otherwise             = 999

decrementOrder last next
  | isGreaterThan last next = next
  | otherwise               = 999
