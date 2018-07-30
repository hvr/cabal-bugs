module A where

import Language.Haskell.TH.Syntax
import Paths_pkg_a (getDataFileName)

embedDataFileTxt :: Q Exp
embedDataFileTxt = do
  fn <- runIO (getDataFileName "datafile.txt")
  runIO (putStrLn ("filename = " ++ show fn))
  s <- runIO (readFile fn)
  return (LitE $ StringL s)
