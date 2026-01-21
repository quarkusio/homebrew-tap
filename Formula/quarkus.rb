# Generated with JReleaser 1.3.0 at 2026-01-21T15:10:46.16928725Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.7/quarkus-cli-3.30.7.zip"
  version "3.30.7"
  sha256 "8ff2d71c6a5da9b7787835b19d531ea59493a26baf0f1644fa7e8263565e8337"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.7", output
  end
end
