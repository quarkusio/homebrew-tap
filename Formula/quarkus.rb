# Generated with JReleaser 0.10.0 at 2022-01-18T16:01:24.224525+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.6.2.Final/quarkus-cli-2.6.2.Final.zip"
  version "2.6.2.Final"
  sha256 "9c88b8f65c12a1382bd9fa33eb46d3bd63be384d4f1af32baa2a50cf920091be"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.6.2.Final", output
  end
end
