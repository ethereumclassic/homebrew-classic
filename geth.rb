require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url "http://builds.etcdevteam.com/go-ethereum/v5.4.x/geth-classic-osx-v5.4.3-5291a28.tar.gz"
  version "5.4.3"
  sha256 "52518625696fd315379e9eff741eb8c26506e376b377446645e4ebeee87d636b"


  def install
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
