{- |

- [x] Modify this file so it prints "Hello, Joe"

Haskell concepts to lookup:
  - Let binding
  - Semigroup
  - Strings

Hint:
  - Replace the `undefined` with an appropriate value

- [x] Now greet two people, Joe and Jane. It should greet them in two lines separately.
- [x] Understand the DRY principle; do you spot DRY in your implementation?
      https://en.wikipedia.org/wiki/Don%27t_repeat_yourself
- [x] Refactor your implementation to avoid DRY
  - What do you understand of the word "abstraction"?
    https://en.wikipedia.org/wiki/Abstraction_principle_(computer_programming)

Haskell concepts to lookup to do the above:
- Functions

Once you have completed all the tasks above, present the `git diff` of the final
program to your instructor.
-}
module Progression.P01 where


printGreeting' :: IO ()
printGreeting' = 
  putStrLn ("Hello, Jane" <> "\n" <> "Hello Jon")




{-I prefer this implementation for ease of adding complexity to it and it allows for arbitary sizes of input and it will work well.

printGreeting' :: [String] -> IO ()
printGreeting' (x:xs) = do
  putStrLn ("Hello, " <> x)
  printGreeting' xs

printGreeting' x = do 
  putStrLn ("Hello, " <> show x) -}

{- A secondary implementation that could work but is more annoying due to the need to modify multiple variables rather then one list is.

let nameA :: String = "Joe"
      nameB :: String = "Jane"
      greeting :: String = "Hello, "
      message = greeting <> nameA <> "\n" <> greeting <> nameB
putStrLn message

-}


main :: IO()
main = do
  printGreeting'