require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "https://github.com/ethereumproject/go-ethereum/releases/download/v5.5.1/geth-classic-osx-v5.5.1-8a3bc2d.tar.gz"
  version "5.5.1"
  sha256 "6a78520e5f99548bb8efc54efe7bcca2bafb99db6c8bb72bd61d4c9cc2bcbc25"


  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
