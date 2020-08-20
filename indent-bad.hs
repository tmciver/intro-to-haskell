forLines :: ([String] -> [String]) -> String -> String
forLines f = unlines . f . lines

indent :: Int -> String -> String
indent n s = replicate n ' ' ++ s
