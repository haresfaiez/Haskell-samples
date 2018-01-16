type CustomerId   = Int
type CustomerName = String
data Customer = Customer {
                  id :: CustomerId,
                  name :: CustomerName
                } deriving (Show)


faiez = Customer 2 "Hares Faiez"              

idOf :: Customer -> CustomerId
idOf   (Customer id _)   = id
nameOf (Customer _ name) = name
