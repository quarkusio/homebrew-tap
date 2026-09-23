# Generated with JReleaser 1.3.0 at 2026-09-23T17:01:19.06818902Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.39.5/quarkus-cli-3.39.5.zip"
  version "3.39.5"
  sha256 "892377ca0378318039864cec4665f3c1081187c7fee91beb899dffb023b937bd"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.39.5", output
  end
end
