class Sheesy < Formula
  # '---> DO NOT EDIT <--- (this file was generated from ./etc/brew/sheesy.rb.in'
  version '4.0.8'
  desc "share secrets within teams to avoid plain-text secrets from day one"
  homepage "https://github.com/share-secrets-safely/cli"
  depends_on "gnupg"

  if OS.mac?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Darwin-x86_64.tar.gz"
      sha256 "4f76ea52d94b9afc22e590ac7c8eca906c16f21d00e04fc873e57e3bccdf1534"
  elsif OS.linux?
      url "https://github.com/share-secrets-safely/cli/releases/download/#{version}/sy-cli-Linux-x86_64.tar.gz"
      sha256 "8fd573bbaf19f9059553571077243e030f0dbe33733d843f7f5233314684fd88"
  end

  def install
    bin.install "sy"
    bin.install "sye"
    bin.install "syv"
    bin.install "syp"
    bin.install "sys"
  end
end
