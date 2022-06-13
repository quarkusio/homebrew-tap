# Generated with JReleaser 1.0.0 at 2022-05-25T17:47:05.614985+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.9.2.Final/quarkus-cli-2.9.2.Final.zip"
  version "2.9.2.Final"
  sha256 "a9cee28a4a552c201ac8212657cf459ddd33674f83aa93cb28cfe86417a24bf0"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.9.2.Final", output
  end
end
