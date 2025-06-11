# Generated with JReleaser 1.3.0 at 2025-06-11T16:05:28.629045902Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.23.3/quarkus-cli-3.23.3.zip"
  version "3.23.3"
  sha256 "ac856ebd7335fcc4c52bfa08a72bfd8f8c6d72ef3dc57d88fe7ef77382990bf4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.23.3", output
  end
end
