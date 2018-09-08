module Main where

import Person
import Foreign.Marshal.Alloc
import Foreign.Storable

main :: IO ()
main =
  alloca $ \ptr -> do
    poke ptr (Person "david" 30)
    p <- showPerson ptr
    print =<< peek p
