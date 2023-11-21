# Generated with JReleaser 1.3.0 at 2023-11-21T16:23:03.580059+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.5.3/quarkus-cli-3.5.3.zip"
  version "3.5.3"
  sha256 "9d425ea5bc48401e594343368d8e2df6688e38a8d24ae2d2a88d69cb77069340"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.5.3", output
  end
end
