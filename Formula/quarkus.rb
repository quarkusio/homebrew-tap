# Generated with JReleaser 1.3.0 at 2026-10-19T14:16:22.04918372Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.40.1.1/quarkus-cli-3.40.1.1.zip"
  version "3.40.1.1"
  sha256 "cd1120ea641d7064203c1ee69361e35e870ea4e3a458aea84bfcfabdeffd4747"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.40.1.1", output
  end
end
