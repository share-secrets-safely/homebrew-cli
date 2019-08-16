class Sheesy < Formula
  # '---> DO NOT EDIT <--- (this file was generated from ./etc/brew/sheesy.rb.in'
  version '4.0.5'
  desc "share secrets within teams to avoid plain-text secrets from day one"
  homepage "https://github.com/share-secrets-safely/cli"
  depends_on "gnupg"

  if OS.mac?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Darwin-x86_64.tar.gz"
      sha256 "434103bf2188ef583ff140939c61d1d86fefa4aa5745f2de6fed901bce80d3ed"
  elsif OS.linux?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Linux-x86_64.tar.gz"
      sha256 "a925914990a510803017e1b9c267a5c5fc4d6162a85ad669df1389c98ce62660"
  end

  def install
    bin.install "sy"
    bin.install "sye"
    bin.install "syv"
    bin.install "syp"
    bin.install "sys"
  end
end
