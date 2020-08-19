import Data.Char (toUpper)
import Data.List (sort)

main = readFile "world.txt" >>= putStr . sortReverse

sortReverse s = unlines (map reverse (sort (lines s)))
