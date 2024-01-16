# Generated with JReleaser 1.3.0 at 2024-01-16T15:21:51.935313Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.6/quarkus-cli-3.6.6.zip"
  version "3.6.6"
  sha256 "0532ae223d5eeaeea1b601a01a5ea13bed282ec9426fc6e5eb64ebec13e5f348"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.6", output
  end
end
