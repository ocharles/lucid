-- | Clear to write, read and edit DSL for writing HTML

module Lucid
  (-- $intro
   -- * Rendering
   -- $rendering
   renderText
  ,renderBS
   -- * Running
   -- $running
  ,execHtml
  ,evalHtml
  -- * Combinators
  ,with
   -- * Types
  ,Html
  ,Attr(..)
   -- * Classes
  ,ToText(..)
  ,ToHtml(..)
  ,Mixed(..)
  -- * Re-exports
  ,module Lucid.Html5)
 where

import Lucid.Base
import Lucid.Html5

-- $intro
--
-- HTML terms in Lucid are written with a postfix ‘@_@’ to indicate data
-- rather than code. Some examples:
--
-- 'p_', 'class_', 'table_', 'style_'
--
-- Elements compose by arguments:
--
-- @
-- table_ (tr_ (td_ (p_ "Hello, World!")))
-- @
--
-- Attributes are set using the 'with' combinator:
--
-- with table_ [rows_ "2"] (tr_ (with td_ [valign_ "top"] (p_ "Hello, attributes!")))
--

-- $rendering
--
-- For rendering you can easily run some HTML immediately with:
--
-- >>> renderText (p_ "Hello!")
-- > "<p>Hello!</p>"
--
-- >>> renderBS (with p_ [style_ "color:red"] "Hello!")
-- "<p style=\"color:red\">Hello!</p>"

-- $running
--
-- If the above rendering functions aren't suited for your purpose,
-- you can run the monad directly and use the more low-level blaze
-- `Builder`, which has a plethora of output modes in
-- "Blaze.ByteString.Builder".
