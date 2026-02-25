# Generated with JReleaser 1.3.0 at 2026-02-25T15:21:41.250058862Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.32.1/quarkus-cli-3.32.1.zip"
  version "3.32.1"
  sha256 "3381bda988a043698996a0b89fef59175640085e0ace3be633bb1569478ce554"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.32.1", output
  end
end
