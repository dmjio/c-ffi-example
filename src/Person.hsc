{-# LANGUAGE BangPatterns     #-}
module Person where

#include "person.h"

import Foreign
import Foreign.C

data Person = Person
  { name :: !String
  , age :: !Int
  } deriving (Show, Eq)

instance Storable Person where
  sizeOf _ = #{size Person}
  alignment _ = #{alignment Person}
  peek ptr = do
    stringName <- peekCString =<< peek (#{ptr Person, name} ptr)
    age <- peek (#{ptr Person, age} ptr)
    pure (Person stringName age)
  poke ptr (Person name age) = do
    cstring <- newCString name
    poke (#{ptr Person, name} ptr) cstring
    poke (#{ptr Person, age} ptr) age

foreign import ccall "showPerson"
  showPerson :: Ptr Person -> IO (Ptr Person)
