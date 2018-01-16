suffixes :: [a] -> [[a]]

suffixes list@(_ : tail)
  = list : suffixes tail
suffixes _
  = []
