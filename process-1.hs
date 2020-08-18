import Data.Char (toUpper)
import Data.List (sort)

main = readFile "world.txt" >>= putStr . process

process s = (map toUpper (unlines (map reverse (sort (lines s)))))
