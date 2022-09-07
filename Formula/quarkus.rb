# Generated with JReleaser 1.1.0 at 2022-09-07T17:34:47.923407+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.12.1.Final/quarkus-cli-2.12.1.Final.zip"
  version "2.12.1.Final"
  sha256 "f03cef1bf929425f334c7d796102d3c6252933803be2087dc37a79c86a9eac85"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.12.1.Final", output
  end
end
