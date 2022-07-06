# Generated with JReleaser 1.1.0 at 2022-07-06T17:57:26.279459+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.10.2.Final/quarkus-cli-2.10.2.Final.zip"
  version "2.10.2.Final"
  sha256 "a71b2c71e25c1a0901d801a0dbf2a2bc3207b82d9e7b88152785efa5f4a6e61c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.10.2.Final", output
  end
end
