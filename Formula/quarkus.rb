# Generated with JReleaser 1.3.0 at 2025-08-20T17:36:43.994024262Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.25.4/quarkus-cli-3.25.4.zip"
  version "3.25.4"
  sha256 "9183e9dd134886dc9a4f6ab898f83973f46e4a0432b75202c002be04843a15d2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.25.4", output
  end
end
