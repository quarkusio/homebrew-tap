# Generated with JReleaser 1.3.0 at 2026-08-04T16:30:19.560238745Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.38.1/quarkus-cli-3.38.1.zip"
  version "3.38.1"
  sha256 "63b22774c6f3362a776844ad071a2b88f194104af6af52aa9d62daaeca2a05ab"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.38.1", output
  end
end
