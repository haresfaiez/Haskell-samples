increase :: Int -> Int

increase number
  = let increment = 1
        result    = number + increment
    in  result
                  

pluralise :: String -> [Int] -> [String]
pluralise word count
  = map prular count
    where prular 0 = "no " ++ word ++ "s"
          prular 1 = "one " ++ word
          prular n = show n ++ " " ++ word ++ "s"

operate x y
  = calculate x y
    where calculate x y = x + y
