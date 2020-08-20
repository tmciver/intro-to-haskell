import Prelude hiding (Maybe (..))

data Maybe a = Just a
             | Nothing
             deriving (Show)

headMaybe :: [a] -> Maybe a
headMaybe [] = Nothing
headMaybe (x:_) = Just x
