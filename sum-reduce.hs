aSum :: Int -> [Int] -> Int
aSum result (each : eachTail)
  = aSum (result + each) eachTail
aSum result []
  = result

type someSum = (Int -> [Int] -> Int)
aReduce :: (someSum) -> [Int] -> Int
aReduce action subject
  = action 0 subject
