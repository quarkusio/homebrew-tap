# Generated with JReleaser 1.3.0 at 2023-05-25T13:42:36.184556+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.0.4.Final/quarkus-cli-3.0.4.Final.zip"
  version "3.0.4.Final"
  sha256 "bb99e5d88d77aadf4696441851c51b4119b9c04be96022e1f69818e1db6ebbee"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.0.4.Final", output
  end
end
