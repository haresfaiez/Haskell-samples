type ISBN     = Int
type Title    = String
type Authors  = [String]

data Book     = Book ISBN Title Authors
                deriving(Show)

realWorldHaskell = Book 1 "Real World Haskell" []
