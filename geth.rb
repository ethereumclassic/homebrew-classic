require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.1.0/geth-classic-osx-v5.1.0-bb1e7b5.tar.gz"
  version "5.1.0"
  sha256 "532faa5b444219ec28576cb60de870847cd520ea8a8e5e3dbb311ed042727196"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
