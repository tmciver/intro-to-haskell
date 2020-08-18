import Data.Char (toUpper)
import Data.List (sort)

main = readFile "world.txt" >>= putStr . sortRevUpper

sortRevUpper s = (map toUpper (unlines (map reverse (sort (lines s)))))
