# Generated with JReleaser 1.0.0 at 2022-05-06T19:36:17.481013+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.8.3.Final/quarkus-cli-2.8.3.Final.zip"
  version "2.8.3.Final"
  sha256 "fb8b4ff0e08c24e3f6580c0c561a89f23cb9f6485ccba6e40a803e3465bf68cd"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.8.3.Final", output
  end
end
