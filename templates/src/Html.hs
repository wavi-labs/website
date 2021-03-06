{-# LANGUAGE OverloadedStrings #-}

module Html where

import Data.Text
import Lucid
import Lucid.Base


-- | Attribute Helpers
aria_label_ :: Text -> Attribute
aria_label_ value = makeAttribute "aria-label" value

aria_expanded_ :: Text -> Attribute
aria_expanded_ value = makeAttribute "aria-expanded" value

aria_hidden_ :: Text -> Attribute
aria_hidden_ value = makeAttribute "aria-hidden" value

data_target_ :: Text -> Attribute
data_target_ value = makeAttribute "data_target" value

-- | HTML Helpers
i'_ :: Applicative m
    => Monad m
    => [Attribute]
    -> HtmlT m ()
i'_ attrs = term "i" attrs ""

u_ :: Applicative m
   => Monad m
   => [Attribute]
   -> HtmlT m a
   -> HtmlT m a
u_ attrs inner = term "u" attrs inner

script'_ :: Applicative m
         => Monad m
         => [Attribute]
         -> HtmlT m ()
script'_ attrs = term "script" attrs ""

dataNetifly_ :: Text -> Attribute
dataNetifly_ value = makeAttribute "data-netifly" value
