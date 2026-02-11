# Generated with JReleaser 1.3.0 at 2026-02-11T16:49:25.414741927Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.31.3/quarkus-cli-3.31.3.zip"
  version "3.31.3"
  sha256 "efd2470eaa103e2753512164ca58cbfe1a5bab667b096292604758bced04afa7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.31.3", output
  end
end
