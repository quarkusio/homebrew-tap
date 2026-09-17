# Generated with JReleaser 1.3.0 at 2026-09-17T09:47:44.405015564Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.39.4/quarkus-cli-3.39.4.zip"
  version "3.39.4"
  sha256 "b5c8f8f08aa003d0f677a909af41143c9befb66ea089d8337324e93420c939bd"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.39.4", output
  end
end
