data List a
  = Cons a (List a)
  | Nil
  deriving(Show)

fromList (x:xs)
  = Cons x (fromList xs)

fromList []
  = Nil

toList (Cons head tail)
  = head : toList tail

toList Nil
  = []

data Tree node
  = Binary node (Tree node) (Tree node)
  | Empty
  deriving(Show)

data CollapsedTree node
  = CollapsedTree {
    value      :: node,
    leftChild  :: (Maybe (CollapsedTree node)),
    rightChild :: (Maybe (CollapsedTree node))
    }
  deriving(Show)
