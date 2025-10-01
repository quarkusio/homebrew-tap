# Generated with JReleaser 1.3.0 at 2025-10-01T17:02:43.13644025Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.28.2/quarkus-cli-3.28.2.zip"
  version "3.28.2"
  sha256 "a20c43fe4fba0c9eb15128ad13f00675c676474941fbedfef4974527316fa997"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.28.2", output
  end
end
