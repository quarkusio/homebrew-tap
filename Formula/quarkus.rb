# Generated with JReleaser 1.3.0 at 2022-11-07T17:13:29.884085+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.4.Final/quarkus-cli-2.13.4.Final.zip"
  version "2.13.4.Final"
  sha256 "17a9c69a18e1b8821baad00988c836f282ab802e4d37d33be1eba69403463e24"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.4.Final", output
  end
end
