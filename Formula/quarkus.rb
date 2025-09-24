# Generated with JReleaser 1.3.0 at 2025-09-24T14:06:11.812240638Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.28.1/quarkus-cli-3.28.1.zip"
  version "3.28.1"
  sha256 "42fd42fc0f7112da4eb9bfb124f926bcc85f13717c98239f388004733c0cd575"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.28.1", output
  end
end
