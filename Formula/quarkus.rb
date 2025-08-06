# Generated with JReleaser 1.3.0 at 2025-08-06T21:06:12.44180167Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.25.1/quarkus-cli-3.25.1.zip"
  version "3.25.1"
  sha256 "df7e20cb3f6f4ec14d772ceb46cf3ee04e27f7f3381e002bc481eece6f457574"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.25.1", output
  end
end
