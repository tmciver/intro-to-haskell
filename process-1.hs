import Data.Char (toUpper)
import Data.List (sort)

main = readFile "gump-quote.txt" >>= putStr . process

process s = (map toUpper (unlines (map reverse (sort (lines s)))))
