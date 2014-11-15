-- |

module Lucid.Example where

import Lucid

demo =
  with table_
       [rows_ "2"]
       (tr_ (do with td_
                     [class_ "top"]
                     (p_ "Hello, attributes!")
                td_ "yay!"))
