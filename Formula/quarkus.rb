# Generated with JReleaser 1.3.0 at 2026-05-27T07:31:56.266504229Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.36.0/quarkus-cli-3.36.0.zip"
  version "3.36.0"
  sha256 "b1c3f16756d642e75f14b633f2692381ae3311df32532f022feae8b8691db9e8"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.36.0", output
  end
end
