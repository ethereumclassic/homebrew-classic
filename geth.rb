require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v4.2.0/geth-classic-osx-v4.2.0-c999068.tar.gz"
  version "4.2.0"
  # eg. openssl sha -sha256 geth-classic-osx-v4.1.1.tar.gz
  sha256 "0aa14e70a5c2d6539f1841dccd5091349dcdb465d9c5436354b6ed41f74c6795"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
