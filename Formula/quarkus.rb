# Generated with JReleaser 1.3.0 at 2025-11-26T15:46:27.340744346Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.1/quarkus-cli-3.30.1.zip"
  version "3.30.1"
  sha256 "41ef18e14b77e36267863cf24ce9fbcc5c613e8d52a7e5e4ddfd7a6538debc80"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.1", output
  end
end
