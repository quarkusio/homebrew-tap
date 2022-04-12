# Generated with JReleaser 1.0.0 at 2022-04-12T11:37:20.466288+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.8.0.Final/quarkus-cli-2.8.0.Final.zip"
  version "2.8.0.Final"
  sha256 "d69f9b67e0d4221ef7a0bc23ad96b6f0c6fb7a583bdb5612354b92485acfd350"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.8.0.Final", output
  end
end
