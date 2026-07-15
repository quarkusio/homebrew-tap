# Generated with JReleaser 1.3.0 at 2026-07-15T16:53:34.431262456Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.37.3/quarkus-cli-3.37.3.zip"
  version "3.37.3"
  sha256 "ba0fb041bca19ae24f45ab34047ac463c094bb9ea9c4e90d78aa43e2d4796c8f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.37.3", output
  end
end
