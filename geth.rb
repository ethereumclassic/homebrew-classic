
require 'formula'

class Geth < Formula
  homepage 'https://github.com/ethereumproject/go-ethereum'
  url 'https://github.com/ethereumproject/go-ethereum.git', :tag => 'v4.1.0'

  devel do
    url 'https://github.com/ethereumproject/go-ethereum.git', :branch => 'master'
  end

  depends_on 'go' => :build

  def install
    ENV["GOROOT"] = "#{HOMEBREW_PREFIX}/opt/go/libexec"
    system "go", "env" # Debug env
    system "go", "build", "-o", "geth", "."
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
