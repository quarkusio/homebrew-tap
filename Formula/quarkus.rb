# Generated with JReleaser 1.3.0 at 2026-01-28T16:44:53.769267234Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.31.1/quarkus-cli-3.31.1.zip"
  version "3.31.1"
  sha256 "e8838c5b5f2da5f3df84ff1b78541658c067213268ac430b0bad86ba5a3f70c5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.31.1", output
  end
end
