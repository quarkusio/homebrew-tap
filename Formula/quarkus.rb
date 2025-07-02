# Generated with JReleaser 1.3.0 at 2025-07-02T10:40:13.887106816Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.24.2/quarkus-cli-3.24.2.zip"
  version "3.24.2"
  sha256 "d0edf808edcd5c9cf921f6a544971e0b5050cffcfce17f5634f072877c6986b7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.24.2", output
  end
end
