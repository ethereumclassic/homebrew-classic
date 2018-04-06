require 'formula'

class EmeraldCli < Formula
  homepage 'https://github.com/ethereumproject/emerald-cli'
  url "https://github.com/ETCDEVTeam/emerald-cli/releases/download/v0.21.0/emerald-cli-v0.21.0-OSX-x86_64.tar.gz"
  version "0.21.0"
  sha256 "ce1de80b80e21a64baf7dc260f4f5aead4951fe38594b50567a37efc9d80a1e7"

  def install
    bin.install Dir["target/release/*"]
    # bin.install 'target/release/emerald'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/emerald", "-V"
  end
end
