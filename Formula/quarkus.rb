# Generated with JReleaser 1.0.0-M1 at 2022-02-08T17:06:54.373914+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.1.Final/quarkus-cli-2.7.1.Final.zip"
  version "2.7.1.Final"
  sha256 "c1b285a00fa319eae5247d91818d2ac6a201352eb1abfb0192a5c397e6d0a9ee"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.1.Final", output
  end
end
