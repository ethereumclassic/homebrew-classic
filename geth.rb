require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.0.0/geth-classic-osx-v5.0.0-ac28808.tar.gz"
  version "5.0.0"
  sha256 "440ff3b9b91311ab1e0eb74eb02a887a0ff04ee2236aa51d0b947504ae96860e"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
