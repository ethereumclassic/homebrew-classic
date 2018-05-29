require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.4.0/geth-classic-osx-v5.4.0-4851b12.tar.gz"
  version "5.4.0"
  sha256 "77d87228f3207a9305badf30c0897c4b85ded3a0c5d14ba52d91619711e60905"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
