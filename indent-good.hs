main = readFile "world.txt" >>= putStr . forEachLine (indent 3)

forEachLine :: (String -> String) -> String -> String
forEachLine f = unlines . map f . lines

indent :: Int -> String -> String
indent n s = replicate n ' ' ++ s
