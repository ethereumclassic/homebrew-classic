require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v4.1.2/geth-classic-osx-v4.1.2.tar.gz"
  version "4.1.2"
  # eg. openssl sha -sha256 geth-classic-osx-v4.1.1.tar.gz
  sha256 "cb11b6a6677f4144edb61030ef6a06e2789b56396024d9a94d98a892ea9a8a0d"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
