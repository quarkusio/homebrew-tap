# Generated with JReleaser 1.3.0 at 2026-06-11T09:50:14.934746668Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.36.2/quarkus-cli-3.36.2.zip"
  version "3.36.2"
  sha256 "2e6d7d4361e06468ce431ad24d146d004cb8615115d64e16cdd4e4de7b41ca6b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.36.2", output
  end
end
