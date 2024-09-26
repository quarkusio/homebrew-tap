# Generated with JReleaser 1.3.0 at 2024-09-26T07:56:19.971770936Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.15.1/quarkus-cli-3.15.1.zip"
  version "3.15.1"
  sha256 "361b52ced2c6b94c623029121baf1d6b3c9261b6ab0508edb3c1b2ec1383bcbf"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.15.1", output
  end
end
