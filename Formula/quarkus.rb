# Generated with JReleaser 1.3.0 at 2022-11-25T18:11:23.449599+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.5.Final/quarkus-cli-2.13.5.Final.zip"
  version "2.13.5.Final"
  sha256 "d41f92fc113c0ac5da767586e134d573401384be3a2414589946cacfd2188897"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.5.Final", output
  end
end
