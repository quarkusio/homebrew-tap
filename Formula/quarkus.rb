# Generated with JReleaser 1.1.0 at 2022-08-31T12:28:46.60315+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.12.0.Final/quarkus-cli-2.12.0.Final.zip"
  version "2.12.0.Final"
  sha256 "7b9c3cf4ebd90434e1b043d6da1a7481f03e9c75437f0486ceb2821f280ce36c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.12.0.Final", output
  end
end
