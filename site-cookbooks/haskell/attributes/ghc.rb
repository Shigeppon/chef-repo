default['ghc']['version']       = '7.6.3'
default['ghc']['source_uri']    = 'http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-x86_64-unknown-linux.tar.bz2'
default['ghc']['configure']     = './configure --prefix=/usr/local'
default['ghc']['packages']      = %w{gmp gmp-devel freeglut freeglut-devel}
