{- | Modify this file so it prints "Hello, Joe"

Topics:
  - Let binding
  - Semigroup
  - Strings

Hint:
  - Replace the `undefined` with an appropriate value
-}
module Progression.P01 where

main :: IO ()
main = do
  let name = "Joe"
      greeting = "Hello, "
      message = undefined
  putStrLn message
