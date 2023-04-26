# Generated with JReleaser 1.3.0 at 2023-04-26T13:55:28.210265+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.0.1.Final/quarkus-cli-3.0.1.Final.zip"
  version "3.0.1.Final"
  sha256 "f06784672a94e4a4b6aba95c2ac7188774e3e665ad93bea0784123e8f142719e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.0.1.Final", output
  end
end
