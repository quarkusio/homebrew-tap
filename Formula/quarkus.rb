# Generated with JReleaser 1.1.0 at 2022-08-05T19:09:12.546409+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.11.2.Final/quarkus-cli-2.11.2.Final.zip"
  version "2.11.2.Final"
  sha256 "b05fa823be1c37aa400fc20bd7f7017c2a7cc1f935236b81c5027adeb40cf492"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.11.2.Final", output
  end
end
