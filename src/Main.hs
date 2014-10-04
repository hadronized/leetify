import Data.Char ( toUpper )
import Data.Map as M ( Map, fromList, lookup )
import Data.Maybe ( fromMaybe )
import System.Environment ( getArgs )

main :: IO ()
main = fmap concat getArgs >>= putStrLn . map leetify
  where
    leetify x = fromMaybe x $ M.lookup (toUpper x) leets

leets :: Map Char Char
leets = fromList
  [
    ('A','4')
  , ('B','8')
  , ('C','C')
  , ('D','D')
  , ('E','3')
  , ('F','F')
  , ('G','6')
  , ('H','H')
  , ('I','1')
  , ('J','J')
  , ('K','K')
  , ('L','L')
  , ('M','M')
  , ('N','N')
  , ('O','0')
  , ('P','P')
  , ('Q','Q')
  , ('R','R')
  , ('S','5')
  , ('T','7')
  , ('U','U')
  , ('V','V')
  , ('W','W')
  , ('X','X')
  , ('Y','Y')
  , ('Z','Z')
  ]
