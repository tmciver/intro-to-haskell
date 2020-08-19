import Data.List (sort)

main = readFile "world.txt" >>= putStr . sortTake3

sortTake3 s = unlines (take 3 (sort (lines s)))
