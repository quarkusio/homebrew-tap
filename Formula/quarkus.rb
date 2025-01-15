# Generated with JReleaser 1.3.0 at 2025-01-15T16:33:25.895802239Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.7/quarkus-cli-3.17.7.zip"
  version "3.17.7"
  sha256 "88d8cbf2d0eb623f13850fdc0e06ee41e0144ccfc9e02000d1bbe76bdb4da994"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.7", output
  end
end
