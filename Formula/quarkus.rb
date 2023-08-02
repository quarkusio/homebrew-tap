# Generated with JReleaser 1.3.0 at 2023-08-02T19:35:25.480169+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.2.3.Final/quarkus-cli-3.2.3.Final.zip"
  version "3.2.3.Final"
  sha256 "45b0e56747f6e87c63c0a29f23baf1bc0759689a89e63ac16276c9b3d0e02edc"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.2.3.Final", output
  end
end
