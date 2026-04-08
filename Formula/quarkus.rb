# Generated with JReleaser 1.3.0 at 2026-04-08T17:07:39.358726185Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.34.3/quarkus-cli-3.34.3.zip"
  version "3.34.3"
  sha256 "50a8bfc998b7191e9f5c52275a7a072e27886058c1efe5023de6714e2ddf5739"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.34.3", output
  end
end
