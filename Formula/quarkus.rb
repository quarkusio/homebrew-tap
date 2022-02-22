# Generated with JReleaser 1.0.0-M1 at 2022-02-22T21:51:34.384194+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.2.Final/quarkus-cli-2.7.2.Final.zip"
  version "2.7.2.Final"
  sha256 "ab5f87351f57caaf524fe74d6b0e461b6f009c9c4e8c5e64c9ce318587860a00"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.2.Final", output
  end
end
