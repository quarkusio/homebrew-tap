# Generated with JReleaser 1.3.0 at 2023-01-04T18:53:57.124996+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.15.2.Final/quarkus-cli-2.15.2.Final.zip"
  version "2.15.2.Final"
  sha256 "a37569ae3f51d434020e96e5511d7a8a6032f3af71afaa49578eb7f359498e8d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.15.2.Final", output
  end
end
