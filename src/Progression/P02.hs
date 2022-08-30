{- |
    In this progression we will do something more complex than P01. We will deal
    with IO and lists.

    In P01, we greeted Joe and Jane. In P02, we will greet *arbitrary* number of
    people. Their names will come from a text file.

    - [x] Implement the two TODO (undefined) below.

    Haskell concepts to apply:
    - IO
    - Lists
    - Recursion *or* list combinators (maps, traversals, etc.)
-}
{-
The concept here is to get the IO String from the file using some of the IO functions. Once we have a [String] we then feed each of its elements to the Person Constrcutor
-}


module Progression.P02 where

import System.IO

-- | It is considered good practice to "alias" types like here for clarity. 
{-The newtype creates more or less the alias for a type in this case it takes a string, and creates a type that is a string called a Person -}
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


-- TODO: Read `peopleFile` such that `persons` is a list of their names
readPeopleFile :: IO [Person]
readPeopleFile = do
                 file <- readFile "src/Progression/P02_data.txt"
                 let stringFile = lines file
                 let personFile = fmap Person stringFile
                 return personFile

-- | Print out messages greeting everybody in the given list.
-- TODO: Define `greetPeople` using `greetPerson`
greetPeople :: [Person] -> IO ()
greetPeople [] = putStrLn "There are no more pepole to greet"
greetPeople (x:xs) = do
  greetPerson x 
  greetPeople xs


main :: IO ()
main = do
  persons <- readPeopleFile
  greetPeople persons
