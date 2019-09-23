class Sheesy < Formula
  # '---> DO NOT EDIT <--- (this file was generated from ./etc/brew/sheesy.rb.in'
  version '4.0.7'
  desc "share secrets within teams to avoid plain-text secrets from day one"
  homepage "https://github.com/share-secrets-safely/cli"
  depends_on "gnupg"

  if OS.mac?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Darwin-x86_64.tar.gz"
      sha256 "aac4905d6b9504af1073dc9e11d9dd38cab50f21f5db3a5879b9bdc483eb0f85"
  elsif OS.linux?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Linux-x86_64.tar.gz"
      sha256 "f574bb0af934992c0abe422d898e37cedf12bc2c7aed53b373c817aab3073137"
  end

  def install
    bin.install "sy"
    bin.install "sye"
    bin.install "syv"
    bin.install "syp"
    bin.install "sys"
  end
end
