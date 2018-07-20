require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "http://builds.etcdevteam.com/go-ethereum/v5.5.x/geth-classic-osx-v5.5.0-382aa8f.tar.gz"
  version "5.5.0"
  sha256 "74ca78979c647fc15007a85453f05196105a4512cfbb27b8587f4b17fb7d84a5"


  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
