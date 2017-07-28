{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_space_age (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0,3] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/media/henry/Steam/Github/exercism/haskell/space-age/.stack-work/install/x86_64-linux/lts-8.21/8.0.2/bin"
libdir     = "/media/henry/Steam/Github/exercism/haskell/space-age/.stack-work/install/x86_64-linux/lts-8.21/8.0.2/lib/x86_64-linux-ghc-8.0.2/space-age-1.0.0.3-4bIjblMNKyF5x0tbaTNE6x"
dynlibdir  = "/media/henry/Steam/Github/exercism/haskell/space-age/.stack-work/install/x86_64-linux/lts-8.21/8.0.2/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/media/henry/Steam/Github/exercism/haskell/space-age/.stack-work/install/x86_64-linux/lts-8.21/8.0.2/share/x86_64-linux-ghc-8.0.2/space-age-1.0.0.3"
libexecdir = "/media/henry/Steam/Github/exercism/haskell/space-age/.stack-work/install/x86_64-linux/lts-8.21/8.0.2/libexec"
sysconfdir = "/media/henry/Steam/Github/exercism/haskell/space-age/.stack-work/install/x86_64-linux/lts-8.21/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "space_age_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "space_age_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "space_age_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "space_age_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "space_age_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "space_age_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
