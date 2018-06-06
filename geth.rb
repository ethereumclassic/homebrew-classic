require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "http://builds.etcdevteam.com/go-ethereum/v5.4.x/geth-classic-osx-v5.4.1-a3d20f6.tar.gz"
  version "5.4.1"
  sha256 "2b1375df5a7624ce24ff5f98ff1d2905ac499cb375315c0fd0fb69f5792791ab"


  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
