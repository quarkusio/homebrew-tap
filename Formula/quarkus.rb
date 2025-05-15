# Generated with JReleaser 1.3.0 at 2025-05-15T09:47:27.692082879Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.22.3/quarkus-cli-3.22.3.zip"
  version "3.22.3"
  sha256 "38703b4a029fabd47144b771746b23473872ae8f634208d058beaeffe5817356"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.22.3", output
  end
end
