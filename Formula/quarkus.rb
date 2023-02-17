# Generated with JReleaser 1.3.0 at 2023-02-17T09:56:35.482082+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.3.Final/quarkus-cli-2.16.3.Final.zip"
  version "2.16.3.Final"
  sha256 "cf6a49061f688b80945adb66a88086d6fe8432b8b18f0109b16c5a821180dad2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.3.Final", output
  end
end
