# Generated with JReleaser 1.3.0 at 2024-03-19T13:56:52.458896817Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.8.3/quarkus-cli-3.8.3.zip"
  version "3.8.3"
  sha256 "8af20d0fb789b9971402db6133fa5e3e9ebc66a99d7f94f023225ade1682a961"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.8.3", output
  end
end
