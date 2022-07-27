# Generated with JReleaser 1.1.0 at 2022-07-27T14:58:38.984822+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.10.4.Final/quarkus-cli-2.10.4.Final.zip"
  version "2.10.4.Final"
  sha256 "c1bbe082e57293d3b6ebaf03cdb0e0decc82561b0e26e7c40cb3b77c7df225b9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.10.4.Final", output
  end
end
