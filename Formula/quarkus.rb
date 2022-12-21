# Generated with JReleaser 1.3.0 at 2022-12-21T17:16:04.286997+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.15.1.Final/quarkus-cli-2.15.1.Final.zip"
  version "2.15.1.Final"
  sha256 "b4dd23f78354e4e925dbd6107fd2ea42107d740d9dec8585e25ca267df23d35e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.15.1.Final", output
  end
end
