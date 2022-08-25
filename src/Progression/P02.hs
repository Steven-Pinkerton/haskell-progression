{- |
    In this progression we will do something more complex than P01. We will deal
    with IO and lists.

    In P01, we greeted Joe and Jane. In P02, we will greet *arbitrary* number of
    people. Their names will come from a text file.

    - [ ] Implement the two TODO (undefined) below.

    Haskell concepts to apply:
    - IO
    - Lists
    - Recursion *or* list combinators (maps, traversals, etc.)
-}
module Progression.P02 where

newtype Person = Person {unPerson :: String}
  deriving stock (Eq)

-- | Make a greeting message to greet the given person
mkGreeting :: Person -> String
mkGreeting name = "Hello, " <> unPerson name

-- | Print out a message greeting the given person
greetPerson :: Person -> IO ()
greetPerson name = putStrLn (mkGreeting name)

-- | The file containing the list of persons concerned.
peopleFile :: FilePath
peopleFile = "src/Progression/P02_data.txt"

main :: IO ()
main = do
  persons :: [Person] <- undefined -- TODO: Read `peopleFile` such that `persons` is a list of their names
  greetPeople persons

-- | Print out messages greeting everybody in the given list.
greetPeople :: [Person] -> IO ()
greetPeople persons =
  -- TODO: Define `greetPeople` using `greetPerson`
  undefined
