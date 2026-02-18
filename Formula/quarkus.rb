# Generated with JReleaser 1.3.0 at 2026-02-18T16:42:21.502080611Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.31.4/quarkus-cli-3.31.4.zip"
  version "3.31.4"
  sha256 "93cf975d6ed6ff5b2043356d53f32a62c5bc80651ec579afe39d48a75b6a0842"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.31.4", output
  end
end
