class Sheesy < Formula
  # '---> DO NOT EDIT <--- (this file was generated from ./etc/brew/sheesy.rb.in'
  version '4.0.2'
  desc "share secrets within teams to avoid plain-text secrets from day one"
  homepage "https://github.com/share-secrets-safely/cli"
  depends_on "gnupg"

  if OS.mac?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Darwin-x86_64.tar.gz"
      sha256 "b15e25f9e2f2fac5508e6c65c99c25afdf84bf03a6687e7115d243f22e6333bb"
  elsif OS.linux?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Linux-x86_64.tar.gz"
      sha256 "c2514238ef203f32547f06c93764f39a96bb6c19f1b042ff1e08fb5a1bf7193c"
  end

  def install
    bin.install "sy"
    bin.install "sye"
    bin.install "syv"
    bin.install "syp"
    bin.install "sys"
  end
end
