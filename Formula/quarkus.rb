# Generated with JReleaser 1.3.0 at 2026-03-04T21:37:25.165024349Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.32.2/quarkus-cli-3.32.2.zip"
  version "3.32.2"
  sha256 "10d85d36db39ee4f236e1906987d550ed02704a1e330f282689acbc9d8ee8154"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.32.2", output
  end
end
