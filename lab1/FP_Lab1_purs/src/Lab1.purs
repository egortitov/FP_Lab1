module Lab1 where

import Prelude

import Effect (Effect)
import Data.List (List(..), reverse, (:), tail)
import Data.Maybe (fromMaybe)
import Effect.Console (log)

singleton :: forall a. a -> List a
singleton b = Cons b Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc b c = reverse (c : reverse b)

length :: forall a. List a -> Int
length Nil = 0
length b = 1 + (length $ fromMaybe Nil $ tail b)


test :: Effect Unit
test = do
  log $ show $ singleton 1
  log $ show $ null Nil
  log $ show $ null (Cons 1 Nil)
  log $ show $ snoc (Cons 1 Nil) 5
  log $ show $ length (Cons 1 Nil)
  log $ show $ length Nil