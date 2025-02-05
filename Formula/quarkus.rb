# Generated with JReleaser 1.3.0 at 2025-02-05T14:53:43.375853149Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.18.2/quarkus-cli-3.18.2.zip"
  version "3.18.2"
  sha256 "0a5c69c35bb0047dd21ec580f3639181a9dcfb10743eec7e016563db182e4e7b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.18.2", output
  end
end
