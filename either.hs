

calculationThatMightFail :: Int -> Either String Char
calculationThatMightFail 0 = Left "Zero not allowed!"
calculationThatMightFail 1 = Right 'A'
calculationThatMightFail 2 = Right 'Q'
calculationThatMightFail _ = Left "I don't like that number!"
