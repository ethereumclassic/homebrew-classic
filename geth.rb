
require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v4.1.0/geth-classic-osx-v4.1.0.tar.gz"
  version "4.1.0"
  sha256 "ede6201104c7e0715ac70dd5ce9010d11cda12f4c9bae47181815221fc4acf0f"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
