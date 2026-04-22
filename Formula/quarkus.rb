# Generated with JReleaser 1.3.0 at 2026-04-22T15:41:31.824329004Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.34.6/quarkus-cli-3.34.6.zip"
  version "3.34.6"
  sha256 "4c097a2c47f17f4fba6bc1402be84affe1d533e69e79ef42681a6578e481762b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.34.6", output
  end
end
