# Generated with JReleaser 1.3.0 at 2026-08-13T16:21:20.797802496Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.38.2/quarkus-cli-3.38.2.zip"
  version "3.38.2"
  sha256 "695942983e58b09d88f9fb78d888ba067ff4a75a0ab7c38d933328fa6493cb86"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.38.2", output
  end
end
