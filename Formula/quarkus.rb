# Generated with JReleaser 1.3.0 at 2024-07-10T14:22:25.962742938Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.12.2/quarkus-cli-3.12.2.zip"
  version "3.12.2"
  sha256 "4f54fd895ff12bb253c85891d54b1b3fb2086afd811d404cfb3ee3b0d3c1aff3"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.12.2", output
  end
end
