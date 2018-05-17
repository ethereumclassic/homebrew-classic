require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.3.0/geth-classic-osx-v5.3.0-55fb00b.tar.gz"
  version "5.3.0"
  sha256 "311eb7125a4526d0f694366c45def43d491350ebc65622474e7d27266490d48f"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
