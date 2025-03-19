# Generated with JReleaser 1.3.0 at 2025-03-19T16:21:18.419543164Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.19.4/quarkus-cli-3.19.4.zip"
  version "3.19.4"
  sha256 "a3c2d9f78faac55ed1cf708ef3615ab0cf8483ec033cc12b8fab9ba0241d7287"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.19.4", output
  end
end
