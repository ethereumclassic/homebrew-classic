require 'formula'

class EmeraldCli < Formula
  homepage 'https://github.com/ethereumproject/emerald-cli'
  url "https://github.com/ETCDEVTeam/emerald-cli/releases/download/v0.22.0/emerald-cli-osx-v0.22.0-5dbb148.zip"
  version "0.22.0"
  sha256 "06d82c0d5b3db72e12ffbc5647b1e52f3b32996bd619bf3649f419ff053e379e"

  def install
    bin.install 'emerald'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/emerald", "-V"
  end
end
