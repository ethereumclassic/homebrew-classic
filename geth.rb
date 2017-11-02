
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
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/ethereumproject/"
    ln_sf buildpath, buildpath/"src/github.com/ethereumproject/go-ethereum"
    system "go", "env" # Debug env
    system "go", "get", "./..."
    system "go", "build", "-o", "geth", "./cmd/geth"
    bin.install 'geth'
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/geth", "version"
  end
end
