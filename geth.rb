require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.1.1/geth-classic-linux-v5.1.1-003aa6f.tar.gz"
  version "5.1.1"
  sha256 "096e78905d4bf68cccca263c32f42512044338c9ea205145afb3dbc26ca45c68"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
