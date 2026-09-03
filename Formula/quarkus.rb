# Generated with JReleaser 1.3.0 at 2026-09-03T11:02:51.625117287Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.39.2/quarkus-cli-3.39.2.zip"
  version "3.39.2"
  sha256 "1110161fe379d019f3309f82b78fe747c97cdc92ad16c21b0d3f26eab89c8e55"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.39.2", output
  end
end
