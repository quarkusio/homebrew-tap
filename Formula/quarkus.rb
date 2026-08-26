# Generated with JReleaser 1.3.0 at 2026-08-26T17:07:15.935603495Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.39.1/quarkus-cli-3.39.1.zip"
  version "3.39.1"
  sha256 "b2168cc9d0eac128d5829efb97649305f283917938d485f57b7ce8b51346d015"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.39.1", output
  end
end
