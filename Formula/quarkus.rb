# Generated with JReleaser 1.0.0-M1 at 2022-03-02T17:05:26.819335+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.3.Final/quarkus-cli-2.7.3.Final.zip"
  version "2.7.3.Final"
  sha256 "2cd1beef93311a44a173b8120ef94facdc4c3837ee6387e0f35f1125671ab7b4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.3.Final", output
  end
end
