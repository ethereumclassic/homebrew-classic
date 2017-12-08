require 'formula'

class EmeraldCLI < Formula
  homepage 'https://github.com/ethereumproject/emerald-cli'
  # https://github.com/ethereumproject/emerald-cli/releases/download/v0.18.0/emerald-cli-osx-v0.18.1-832bba6.zip
  url "https://github.com/ethereumproject/emerald-cli/releases/download/v0.18.0/emerald-cli-osx-v0.18.1-832bba6.zip"
  version "4.1.2"
  # eg. openssl sha -sha256 geth-classic-osx-v4.1.1.tar.gz
  sha256 "626cffc48998ea008c8997b96cfa448a77d8636fb270f56ef6a50bfbaaf911bb"

  def install
    bin.install 'emerald'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/emerald", "-V"
  end
end
