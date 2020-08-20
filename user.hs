data User = User { name :: String
                 , age :: Int
                 } deriving (Show)

makeUser :: String -> Int -> Either String User
makeUser name age = if (age < 18)
                    then (Left "Not old enough")
                    else if (length name < 3)
                         then (Left "Name too short")
                         else Right (User name age)

businessLogic :: User -> Either String Bool
businessLogic (User _ age) = if (age > 75)
                             then (Left "Too old to do this")
                             else (Right True)

andThen :: Either a b -> (b -> Either a c) -> Either a c
andThen (Left e)  _ = Left e
andThen (Right v) f = f v
