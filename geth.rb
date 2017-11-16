require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v4.1.1/geth-classic-osx-v4.1.1.tar.gz"
  version "4.1.1"
  # openssl sha -sha256 geth-classic-osx-v4.1.1.tar.gz
  sha256 "052716ce676c934c2879aed5ddeeae9650cb02c66cf80d83e4cdeaa000f6ba26"

  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
