{-# LANGUAGE TemplateHaskell #-}

import A

main = print s
  where
    s :: String
    s = $(embedDataFileTxt)
