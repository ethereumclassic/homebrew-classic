require 'formula'

class EmeraldCli < Formula
  homepage 'https://github.com/ethereumproject/emerald-cli'
  # https://github.com/ethereumproject/emerald-cli/releases/download/v0.18.0/emerald-cli-osx-v0.18.1-832bba6.zip
  url "https://github.com/ethereumproject/emerald-cli/releases/download/v0.19.0/emerald-cli-osx-v0.19.3-113a3e3.zip"
  version "0.19.0"
  # eg. openssl sha -sha256 geth-classic-osx-v4.1.1.tar.gz
  sha256 "1b02cfb3b63df43b5355d80ccf737723eed4e3fec45388c9020d4fbdea4906b6"

  def install
    bin.install 'emerald'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/emerald", "-V"
  end
end
