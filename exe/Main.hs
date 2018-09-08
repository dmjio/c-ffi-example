module Main where

import Control.Monad
import Foreign.Marshal.Utils
import Foreign.Storable

import Person

main :: IO ()
main = do
  with (Person "david" 30)
    (print <=< peek <=< showPerson)
