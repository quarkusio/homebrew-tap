# Generated with JReleaser 1.1.0 at 2022-10-12T18:48:42.702278+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.2.Final/quarkus-cli-2.13.2.Final.zip"
  version "2.13.2.Final"
  sha256 "088c3de568ff4cfca7c6aa18ba113ac6d38a6c8bab77c2a981e80c6bad00dd16"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.2.Final", output
  end
end
