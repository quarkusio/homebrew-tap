# Generated with JReleaser 1.3.0 at 2026-09-10T12:13:37.032266131Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.39.3/quarkus-cli-3.39.3.zip"
  version "3.39.3"
  sha256 "37710c298be2cfd287296cfa29f3e71648a71097f37dd673bb823eeb538a0aa4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.39.3", output
  end
end
