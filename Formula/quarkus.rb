# Generated with JReleaser 1.3.0 at 2025-01-29T17:56:01.730677955Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.18.1/quarkus-cli-3.18.1.zip"
  version "3.18.1"
  sha256 "f2c13e9d1bd22fb670414913be551289da9fdb8f0323ffff4b3b7e4fa2f438b7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.18.1", output
  end
end
