# Generated with JReleaser 1.3.0 at 2026-03-11T16:15:30.404183157Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.32.3/quarkus-cli-3.32.3.zip"
  version "3.32.3"
  sha256 "ab0f5de976ec2fc51b05e9adb734c70e8c9ae59c6cd402205d3e224f52e100da"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.32.3", output
  end
end
