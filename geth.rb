require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.2.1/geth-classic-osx-v5.2.1-456053c.tar.gz"
  version "5.2.1"
  sha256 "02c7f4a21e5138bc1dc21987c59cf70bb0e1c73e0cfc20084db36bd45eff25cc"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
