# Generated with JReleaser 1.3.0 at 2025-11-08T16:59:34.676478037Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.29.2/quarkus-cli-3.29.2.zip"
  version "3.29.2"
  sha256 "95fb388314dc0cfa88f97b1f7d92e67d2657966a1aa897979baf4c415c3216f8"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.29.2", output
  end
end
