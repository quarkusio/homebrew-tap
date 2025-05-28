# Generated with JReleaser 1.3.0 at 2025-05-28T09:21:34.398754868Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.23.0/quarkus-cli-3.23.0.zip"
  version "3.23.0"
  sha256 "49a4f665179c0b28f708a83991ea58ebc3f2109f8d88b6ccb41f7a44c8a4fd83"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.23.0", output
  end
end
