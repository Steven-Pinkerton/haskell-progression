{- |
    'tis time to create user interfaces other than terminal!

    We won't build "GUI" apps. Instead we will leverage the web browser to
    display our information in a more visually appealing way.

    To that end, instead of printing a simple text to the console, we will
    produce HTML and open that in the web browser. This progression is about
    taking what we did in P02 and displaying that in the browser.

    - [] Implement `renderHtml`
        - Open `output.html` in your web browser and confirm the output to be expected.
    - [] Refactor `h1` and `html` to eliminate DRY violation.
-}
module Progression.P03 where

import Progression.P02 qualified as P02

newtype Person = Person {unPerson :: String}
  deriving newtype (Eq)

main :: IO ()
main = do
  persons <- P02.readPeopleFile
  let html = renderHtml persons
  putStrLn html
  putStrLn "Writing ./output.html"
  writeFile "output.html" html

renderHtml :: [P02.Person] -> String
renderHtml persons =
  html
    [ h1 ["Greeting"]
    , "TODO" -- TODO: Create a list of greetings on `persons` using `<ul>` and `<li>`.
    ]

type Html = String

h1 :: [Html] -> Html
h1 children =
  mconcat $ ["<h1>"] <> children <> ["</h1>"]

html :: [Html] -> Html
html children =
  mconcat $ ["<html>"] <> children <> ["</html>"]
