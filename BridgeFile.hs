import System.Environment (getArgs)

move input output unitMovement
  = do
      content <- readFile input
      writeFile output (unitMovement content) 

bridge unitMovement
  = do
    args <- getArgs
    case args of
        [input, output] -> move input output unitMovement
        _               -> putStrLn "The program needs exactly two arguments"


inputLength :: String -> String
inputLength input = head "Egh"
    
main
  = bridge inputLength
