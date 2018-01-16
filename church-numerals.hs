module ChurchNumerals  where

type ChurchNum t = (t -> t) -> t -> t

zero    :: ChurchNum t
one     :: ChurchNum t
two     :: ChurchNum t
three   :: ChurchNum t
four    :: ChurchNum t
five    :: ChurchNum t
six     :: ChurchNum t

churchNum :: Integer -> ChurchNum t
churchNum 0 = \f x -> x
churchNum n = \f x -> f (churchNum (n-1) f x)

church2int :: ChurchNum Integer -> Integer
church2int n = n (+1) 0


zero    = \f x -> x
one     = \f x -> f x
two     = \f x -> f . f $ x
three   = \f x -> f . f . f $ x
four    = \f x -> f . f . f . f $ x
five    = churchNum 5
six     = churchNum 6
-- ...


succ :: ChurchNum t -> ChurchNum t
succ = (\n f x -> (f (n f x)))

add :: ChurchNum t -> ChurchNum t -> ChurchNum t
add = \n m f x -> n f (m f x)

mult :: ChurchNum t -> ChurchNum t -> ChurchNum t
mult = \n m f x -> n (m f) x

--pow :: ChurchNum t -> ChurchNum t -> ChurchNum t
--pow = \n m f x -> m (mult n) f x
