{-# LANGUAGE DeriveGeneric #-}

module Page.Services.Types where

import Dhall

import Data.Text (Text)
import GHC.Generics (Generic)


data Config = Config
    deriving (Generic, Show)

instance FromDhall Config
