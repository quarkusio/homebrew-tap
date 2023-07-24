# Generated with JReleaser 1.3.0 at 2023-07-24T09:16:44.321617+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.2.2.Final/quarkus-cli-3.2.2.Final.zip"
  version "3.2.2.Final"
  sha256 "978232e59455a40bf441c3c918d1c9912684cabc92f2023506c9f1ffa7196d4b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.2.2.Final", output
  end
end
