# Generated with JReleaser 1.1.0 at 2022-09-28T12:45:24.567513+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.0.Final/quarkus-cli-2.13.0.Final.zip"
  version "2.13.0.Final"
  sha256 "2b1ff0549b3241b0890659073414ee317acbef7bea0069d3c9c606ad9b5e1bc2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.0.Final", output
  end
end
