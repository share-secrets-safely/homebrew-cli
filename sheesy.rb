class Sheesy < Formula
  # '---> DO NOT EDIT <--- (this file was generated from ./etc/brew/sheesy.rb.in'
  version '4.0.1'
  desc "share secrets within teams to avoid plain-text secrets from day one"
  homepage "https://github.com/share-secrets-safely/cli"
  depends_on "gnupg"

  if OS.mac?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Darwin-x86_64.tar.gz"
      sha256 "09f6a87752adde36fdbee7fcdd247effb8c17f8d509d724698795f981dabc5e4"
  elsif OS.linux?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Linux-x86_64.tar.gz"
      sha256 "4f18a44f65860fb52db87acd926b4ee2fd77efee3aea91e7fcdcfdabbc63f0f7"
  end

  def install
    bin.install "sy"
    bin.install "sye"
    bin.install "syv"
    bin.install "syp"
    bin.install "sys"
  end
end
