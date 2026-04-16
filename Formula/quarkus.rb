# Generated with JReleaser 1.3.0 at 2026-04-16T20:06:34.751912081Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.34.5/quarkus-cli-3.34.5.zip"
  version "3.34.5"
  sha256 "5ffb449e6e11c36de501f4e87cab01ead063f1c542e9fa68f2118160ef9d9a61"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.34.5", output
  end
end
