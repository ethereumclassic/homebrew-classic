require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v4.2.1/geth-classic-osx-v4.2.1-d3deb0e.tar.gz"
  version "4.2.1"
  sha256 "12c75d1e023580a7f730d12a520fa3d131740b0266180e97820297cc51aa8127"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
