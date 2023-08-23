# Generated with JReleaser 1.3.0 at 2023-08-23T12:40:47.914364+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.3.0/quarkus-cli-3.3.0.zip"
  version "3.3.0"
  sha256 "28b1cbc3c6b2db9ffd3612edd53f42f926c3673d6cae59914ffd58c009cc7e9b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.3.0", output
  end
end
