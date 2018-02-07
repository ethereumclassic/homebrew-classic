require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v4.2.2/geth-classic-osx-v4.2.2-c127446.tar.gz"
  version "4.2.2"
  sha256 "da37aaae6d94c09aef8f599c570f63e1e815362039a67bfb7246b719bb459041"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
