# Generated with JReleaser 1.3.0 at 2026-03-25T16:57:33.806219555Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.34.1/quarkus-cli-3.34.1.zip"
  version "3.34.1"
  sha256 "74760a388c973966cb7c8d0ca77bda951e60e9c997ad07ed92ebd5fa3b497a56"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.34.1", output
  end
end
