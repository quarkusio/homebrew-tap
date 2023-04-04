# Generated with JReleaser 1.3.0 at 2023-04-04T15:20:12.738518+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.6.Final/quarkus-cli-2.16.6.Final.zip"
  version "2.16.6.Final"
  sha256 "3d3249abe03a4ff9515f7644c3412f7d7f7c712cda8c4fced6e03712ab19f61d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.6.Final", output
  end
end
