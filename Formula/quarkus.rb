# Generated with JReleaser 1.3.0 at 2025-09-24T19:31:18.737538417+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.28.1/quarkus-cli-3.28.1.zip"
  version "3.28.1"
  sha256 "323b1f7abdb8d66aa067c77e68608333e62fd47da195004313a5ba091e45c560"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.28.1", output
  end
end
